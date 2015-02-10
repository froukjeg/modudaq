<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="9008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Basic Example Demo.vi" Type="VI" URL="../Basic Example Demo.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Merge Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Merge Errors.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
			</Item>
			<Item Name="DialogOpen.vi" Type="VI" URL="../DialogOpen.vi"/>
			<Item Name="CAENComm.lvlib" Type="Library" URL="../../CAENComm.lvlib"/>
			<Item Name="CAENComm.dll" Type="Document" URL="CAENComm.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="CAENComm Demo" Type="EXE">
				<Property Name="App_applicationGUID" Type="Str">{FBE78990-3DA7-47B7-BD29-1E9D64573AB4}</Property>
				<Property Name="App_applicationName" Type="Str">Demo.exe</Property>
				<Property Name="App_autoIncrement" Type="Bool">true</Property>
				<Property Name="App_companyName" Type="Str">CAEN SpA</Property>
				<Property Name="App_fileDescription" Type="Str">CAENComm Demo of CAENComm for LabVIEW</Property>
				<Property Name="App_fileVersion.build" Type="Int">4</Property>
				<Property Name="App_fileVersion.major" Type="Int">1</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{E3EF15AA-A163-4922-97DD-D9A206FC24DD}</Property>
				<Property Name="App_INI_GUID" Type="Str">{78B7AE7F-2B88-4BFF-A210-312323269361}</Property>
				<Property Name="App_internalName" Type="Str">CAENComm Demo</Property>
				<Property Name="App_legalCopyright" Type="Str">Copyright © 2012 CAEN SpA</Property>
				<Property Name="App_productName" Type="Str">CAENComm Demo</Property>
				<Property Name="Bld_buildSpecName" Type="Str">CAENComm Demo</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Destination[0].destName" Type="Str">Demo.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/CAENComm Demo/Demo.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/CAENComm Demo/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{768703B5-3255-45F9-9B4E-45F8B5DF79BF}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Basic Example Demo.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
			</Item>
			<Item Name="CAENCommDemo" Type="Installer">
				<Property Name="arpCompany" Type="Str">CAEN SpA</Property>
				<Property Name="arpURL" Type="Str">http://www.caen.it/</Property>
				<Property Name="BldInfo.Count" Type="Int">1</Property>
				<Property Name="BldInfo[0].Dir" Type="Str">{362A033E-6F64-47FA-82C1-B5F80CEA89E0}</Property>
				<Property Name="BldInfo[0].Tag" Type="Ref">/My Computer/Build Specifications/CAENComm Demo</Property>
				<Property Name="BuildLabel" Type="Str">CAENCommDemo</Property>
				<Property Name="BuildLocation" Type="Path">../../builds</Property>
				<Property Name="DirInfo.Count" Type="Int">2</Property>
				<Property Name="DirInfo.DefaultDir" Type="Str">{362A033E-6F64-47FA-82C1-B5F80CEA89E0}</Property>
				<Property Name="DirInfo[0].DirName" Type="Str">CAEN</Property>
				<Property Name="DirInfo[0].DirTag" Type="Str">{73C713F3-60C9-4B5D-B12A-DFB96ABD22B6}</Property>
				<Property Name="DirInfo[0].ParentTag" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="DirInfo[1].DirName" Type="Str">CommDemoLabVIEW</Property>
				<Property Name="DirInfo[1].DirTag" Type="Str">{362A033E-6F64-47FA-82C1-B5F80CEA89E0}</Property>
				<Property Name="DirInfo[1].ParentTag" Type="Str">{73C713F3-60C9-4B5D-B12A-DFB96ABD22B6}</Property>
				<Property Name="DistID" Type="Str">{5587AD1E-564D-423D-ABDE-DAD5CF30CC9A}</Property>
				<Property Name="DistParts.Count" Type="Int">1</Property>
				<Property Name="DistPartsInfo[0].FlavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPartsInfo[0].ProductID" Type="Str">{4E049CBB-01EE-4859-B4C8-26E42263CEE4}</Property>
				<Property Name="DistPartsInfo[0].ProductName" Type="Str">NI LabVIEW Run-Time Engine 2009</Property>
				<Property Name="DistPartsInfo[0].UpgradeCode" Type="Str">{1DA01FF3-1E36-4A14-802B-D195819E159B}</Property>
				<Property Name="FileInfo.Count" Type="Int">3</Property>
				<Property Name="FileInfo[0].DirTag" Type="Str">{362A033E-6F64-47FA-82C1-B5F80CEA89E0}</Property>
				<Property Name="FileInfo[0].FileName" Type="Str">Demo.exe</Property>
				<Property Name="FileInfo[0].FileTag" Type="Str">{FBE78990-3DA7-47B7-BD29-1E9D64573AB4}</Property>
				<Property Name="FileInfo[0].Type" Type="Int">3</Property>
				<Property Name="FileInfo[0].TypeID" Type="Ref">/My Computer/Build Specifications/CAENComm Demo</Property>
				<Property Name="FileInfo[1].DirTag" Type="Str">{362A033E-6F64-47FA-82C1-B5F80CEA89E0}</Property>
				<Property Name="FileInfo[1].FileName" Type="Str">Demo.aliases</Property>
				<Property Name="FileInfo[1].FileTag" Type="Str">{E3EF15AA-A163-4922-97DD-D9A206FC24DD}</Property>
				<Property Name="FileInfo[1].Type" Type="Int">3</Property>
				<Property Name="FileInfo[1].TypeID" Type="Ref">/My Computer/Build Specifications/CAENComm Demo</Property>
				<Property Name="FileInfo[2].DirTag" Type="Str">{362A033E-6F64-47FA-82C1-B5F80CEA89E0}</Property>
				<Property Name="FileInfo[2].FileName" Type="Str">Demo.ini</Property>
				<Property Name="FileInfo[2].FileTag" Type="Str">{78B7AE7F-2B88-4BFF-A210-312323269361}</Property>
				<Property Name="FileInfo[2].Type" Type="Int">3</Property>
				<Property Name="FileInfo[2].TypeID" Type="Ref">/My Computer/Build Specifications/CAENComm Demo</Property>
				<Property Name="InstSpecVersion" Type="Str">9008022</Property>
				<Property Name="LicenseFile" Type="Ref"></Property>
				<Property Name="OSCheck" Type="Int">1</Property>
				<Property Name="OSCheck_Vista" Type="Bool">false</Property>
				<Property Name="ProductName" Type="Str">CAENComm Demo</Property>
				<Property Name="ProductVersion" Type="Str">1.1.0</Property>
				<Property Name="ReadmeFile" Type="Ref"></Property>
				<Property Name="ShortcutInfo.Count" Type="Int">1</Property>
				<Property Name="ShortcutInfo[0].DirTag" Type="Str">{B9E310F1-839C-48B7-8CAE-33000780C26E}</Property>
				<Property Name="ShortcutInfo[0].FileTag" Type="Str">{FBE78990-3DA7-47B7-BD29-1E9D64573AB4}</Property>
				<Property Name="ShortcutInfo[0].FileTagDir" Type="Str">{362A033E-6F64-47FA-82C1-B5F80CEA89E0}</Property>
				<Property Name="ShortcutInfo[0].Name" Type="Str">Demo</Property>
				<Property Name="ShortcutInfo[0].SubDir" Type="Str">CAENComm Demo</Property>
				<Property Name="UpgradeCode" Type="Str">{946ABC60-9C66-4C74-A62B-17BF6EB417A9}</Property>
			</Item>
		</Item>
	</Item>
</Project>
