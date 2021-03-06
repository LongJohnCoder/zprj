#**********************************************************************
#**********************************************************************
#**                                                                  **
#**        (C)Copyright 1985-2009, American Megatrends, Inc.         **
#**                                                                  **
#**                       All Rights Reserved.                       **
#**                                                                  **
#**      5555 Oakbrook Parkway, Suite 200, Norcross, GA 30093        **
#**                                                                  **
#**                       Phone: (770)-246-8600                      **
#**                                                                  **
#**********************************************************************
#**********************************************************************

#**********************************************************************
# $Header: /Alaska/SOURCE/Modules/SharkBayRefCodes/IntelEDK/EfiProtocolLib/EfiProtocolLib.mak 1     1/20/12 4:00a Jeffch $
#
# $Revision: 1 $
#
# $Date: 1/20/12 4:00a $
#**********************************************************************
# Revision History
# ----------------
# $Log: /Alaska/SOURCE/Modules/SharkBayRefCodes/IntelEDK/EfiProtocolLib/EfiProtocolLib.mak $
# 
# 1     1/20/12 4:00a Jeffch
# Create Intel EDK 1117 Patch 7.
# 
# 1     9/27/11 6:23a Wesleychen
# Intel EDK initially releases.
# 
# 2     9/02/09 3:15a Iminglin
# EIP24919
# 
#**********************************************************************
#<AMI_FHDR_START>
#
# Name:	EfiProtocolLib.mak
#
# Description:	
#
#<AMI_FHDR_END>
#**********************************************************************
$(EFIPROTOCOLLIB) : EfiProtocolLib

$(BUILD_DIR)\EfiProtocolLib.lib : EfiProtocolLib

EfiProtocolLib : $(BUILD_DIR)\EfiProtocolLib.mak EfiProtocolLibBin

$(BUILD_DIR)\EfiProtocolLib.mak : $(EfiProtocolLib_DIR)\$(@B).cif $(EfiProtocolLib_DIR)\$(@B).mak $(BUILD_RULES)
	$(CIF2MAK) $(EfiProtocolLib_DIR)\$(@B).cif $(CIF2MAK_DEFAULTS)

EfiProtocolLibBin : 
	$(MAKE) /$(MAKEFLAGS) $(EDK_DEFAULTS)\
		/f $(BUILD_DIR)\EfiProtocolLib.mak all\
		TYPE=LIBRARY \
#**********************************************************************
#**********************************************************************
#**                                                                  **
#**        (C)Copyright 1985-2009, American Megatrends, Inc.         **
#**                                                                  **
#**                       All Rights Reserved.                       **
#**                                                                  **
#**      5555 Oakbrook Parkway, Suite 200, Norcross, GA 30093        **
#**                                                                  **
#**                       Phone: (770)-246-8600                      **
#**                                                                  **
#**********************************************************************
#**********************************************************************