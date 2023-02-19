modem = peripheral.wrap("top")
traChan = 0
repChan = 0
code = 0
print("Enter network address...")
traChan = tonumber(read())
repChan = traChan+1
print("Selected network: "..traChan)
print("Enter access code...")
code = read()
modem.transmit(traChan,repChan,code)
print("Sent, awaiting response...")
modem.open(repChan)
dis,dis,dis,dis,response,dis = os.pullEvent("modem_message")
print("Response: "..response)
