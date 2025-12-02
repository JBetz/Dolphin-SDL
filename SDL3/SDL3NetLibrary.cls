"Filed out from Dolphin Smalltalk"!

ExternalLibrary subclass: #SDL3NetLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL3NetLibrary guid: (GUID fromString: '{f516ff81-bdda-4097-8e0c-b0df867e110c}')!

SDL3NetLibrary comment: ''!

!SDL3NetLibrary categoriesForClass!External-Libraries! !

!SDL3NetLibrary methodsFor!

acceptClient_server: server clientStream: clientStream
	<cdecl: bool NET_AcceptClient NET_Server* NET_StreamSocket**>
	^self invalidCall: _failureCode!

compareAddresses_a: a b: b
	<cdecl: sdword NET_CompareAddresses NET_Address* NET_Address*>
	^self invalidCall: _failureCode!

createClient_address: address port: port
	<cdecl: NET_StreamSocket* NET_CreateClient NET_Address* dword>
	^self invalidCall: _failureCode!

createDatagramSocket_address: address port: port
	<cdecl: NET_DatagramSocket* NET_CreateDatagramSocket NET_Address* dword>
	^self invalidCall: _failureCode!

createServer_address: address port: port
	<cdecl: NET_Server* NET_CreateServer NET_Address* dword>
	^self invalidCall: _failureCode!

destroyDatagram_datagram: datagram
	<cdecl: void NET_DestroyDatagram NET_Datagram*>
	^self invalidCall: _failureCode!

destroyDatagramSocket_socket: socket
	<cdecl: void NET_DestroyDatagramSocket NET_DatagramSocket*>
	^self invalidCall: _failureCode!

destroyServer_server: server
	<cdecl: void NET_DestroyServer NET_Server*>
	^self invalidCall: _failureCode!

destroyStreamSocket_socket: socket
	<cdecl: void NET_DestroyStreamSocket NET_StreamSocket*>
	^self invalidCall: _failureCode!

freeLocalAddresses_addresses: addresses
	<cdecl: void NET_FreeLocalAddresses NET_Address**>
	^self invalidCall: _failureCode!

getAddressStatus_address: address
	<cdecl: sdword NET_GetAddressStatus NET_Address*>
	^self invalidCall: _failureCode!

getAddressString_address: address
	<cdecl: char* NET_GetAddressString NET_Address*>
	^self invalidCall: _failureCode!

getConnectionStatus_socket: socket
	<cdecl: sdword NET_GetConnectionStatus NET_StreamSocket*>
	^self invalidCall: _failureCode!

getLocalAddresses_numAddresses: numAddresses
	<cdecl: NET_Address** NET_GetLocalAddresses sdword*>
	^self invalidCall: _failureCode!

getStreamSocketAddress_socket: socket
	<cdecl: NET_Address* NET_GetStreamSocketAddress NET_StreamSocket*>
	^self invalidCall: _failureCode!

getStreamSocketPendingWrites_socket: socket
	<cdecl: sdword NET_GetStreamSocketPendingWrites NET_StreamSocket*>
	^self invalidCall: _failureCode!

init
	<cdecl: bool NET_Init>
	^self invalidCall: _failureCode!

quit
	<cdecl: void NET_Quit>
	^self invalidCall: _failureCode!

readFromStreamSocket_socket: socket buffer: buffer bufferLength: bufferLength
	<cdecl: sdword NET_ReadFromStreamSocket NET_StreamSocket* lpvoid sdword>
	^self invalidCall: _failureCode!

receiveDatagram_socket: socket datagram: datagram
	<cdecl: bool NET_ReceiveDatagram NET_DatagramSocket* NET_Datagram**>
	^self invalidCall: _failureCode!

refAddress_address: address
	<cdecl: NET_Address* NET_RefAddress NET_Address*>
	^self invalidCall: _failureCode!

resolveHostname_host: host
	<cdecl: NET_Address* NET_ResolveHostname char*>
	^self invalidCall: _failureCode!

sendDatagram_socket: socket address: address port: port buffer: buffer bufferLength: bufferLength
	<cdecl: bool NET_SendDatagram NET_DatagramSocket* NET_Address* dword lpvoid sdword>
	^self invalidCall: _failureCode!

simulateAddressResolutionLoss_percentLoss: percentLoss
	<cdecl: void NET_SimulateAddressResolutionLoss sdword>
	^self invalidCall: _failureCode!

simulateDatagramPacketLoss_socket: socket percentLoss: percentLoss
	<cdecl: void NET_SimulateDatagramPacketLoss NET_DatagramSocket* sdword>
	^self invalidCall: _failureCode!

simulateStreamPacketLoss_socket: socket percentLoss: percentLoss
	<cdecl: void NET_SimulateStreamPacketLoss NET_DatagramSocket* sdword>
	^self invalidCall: _failureCode!

unrefAddress_address: address
	<cdecl: void NET_UnrefAddress NET_Address*>
	^self invalidCall: _failureCode!

version
	<cdecl: sdword NET_Version>
	^self invalidCall: _failureCode!

waitUntilConnected_socket: socket timeout: timeout
	<cdecl: sdword NET_WaitUntilConnected NET_StreamSocket* sdword>
	^self invalidCall: _failureCode!

waitUntilInputAvailable_sockets: sockets numSockets: numSockets timeout: timeout
	<cdecl: sdword NET_WaitUntilInputAvailable lpvoid* sdword sdword>
	^self invalidCall: _failureCode!

waitUntilResolved_address: address timeout: timeout
	<cdecl: sdword NET_WaitUntilResolved NET_Address* sdword>
	^self invalidCall: _failureCode!

waitUntilStreamSocketDrained_socket: socket timeout: timeout
	<cdecl: sdword NET_WaitUntilStreamSocketDrained NET_StreamSocket* sdword>
	^self invalidCall: _failureCode!

writeToStreamSocket_socket: socket buffer: buffer bufferLength: bufferLength
	<cdecl: bool NET_WriteToStreamSocket NET_StreamSocket* lpvoid sdword>
	^self invalidCall: _failureCode! !

!SDL3NetLibrary categoriesForMethods!
acceptClient_server:clientStream:!public! !
compareAddresses_a:b:!public! !
createClient_address:port:!public! !
createDatagramSocket_address:port:!public! !
createServer_address:port:!public! !
destroyDatagram_datagram:!public! !
destroyDatagramSocket_socket:!public! !
destroyServer_server:!public! !
destroyStreamSocket_socket:!public! !
freeLocalAddresses_addresses:!public! !
getAddressStatus_address:!public! !
getAddressString_address:!public! !
getConnectionStatus_socket:!public! !
getLocalAddresses_numAddresses:!public! !
getStreamSocketAddress_socket:!public! !
getStreamSocketPendingWrites_socket:!public! !
init!public! !
quit!public! !
readFromStreamSocket_socket:buffer:bufferLength:!public! !
receiveDatagram_socket:datagram:!public! !
refAddress_address:!public! !
resolveHostname_host:!public! !
sendDatagram_socket:address:port:buffer:bufferLength:!public! !
simulateAddressResolutionLoss_percentLoss:!public! !
simulateDatagramPacketLoss_socket:percentLoss:!public! !
simulateStreamPacketLoss_socket:percentLoss:!public! !
unrefAddress_address:!public! !
version!public! !
waitUntilConnected_socket:timeout:!public! !
waitUntilInputAvailable_sockets:numSockets:timeout:!public! !
waitUntilResolved_address:timeout:!public! !
waitUntilStreamSocketDrained_socket:timeout:!public! !
writeToStreamSocket_socket:buffer:bufferLength:!public! !
!

!SDL3NetLibrary class methodsFor!

fileName
	^FileLocator imageRelative: 'SDL3_net'! !

!SDL3NetLibrary class categoriesForMethods!
fileName!public! !
!

