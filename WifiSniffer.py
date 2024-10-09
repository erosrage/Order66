from scapy.all import sniff, Dot11

def packet_handler(packet):
    if packet.haslayer(Dot11):
        # Check if it's a management frame (type 0), and subtype 4 (probe request)
        if packet.type == 0 and packet.subtype == 4:
            ssid = packet.info.decode() if packet.info else "<Hidden SSID>"
            mac_address = packet.addr2
            print(f"Detected Probe Request from MAC: {mac_address}, SSID: {ssid}")

# Sniffing on the specified interface (replace 'wlan0' with your interface name)
def start_sniffer(interface):
    print(f"Starting WiFi sniffer on interface: {interface}")
    sniff(iface=interface, prn=packet_handler, store=0)

if __name__ == "__main__":
    interface = "wlan0"  # Replace with your WiFi interface in monitor mode
    start_sniffer(interface)
