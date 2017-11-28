//
//  BottleDetailInfoModel.m
//  Order
//
//  Created by 凯东源 on 2017/11/24.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "BottleDetailInfoModel.h"


NSString *const kBottleDetailInfoModelIDX = @"IDX";
NSString *const kBottleDetailInfoModelORDDATEADD = @"ORD_DATE_ADD";
NSString *const kBottleDetailInfoModelORDENTIDX = @"ORD_ENT_IDX";
NSString *const kBottleDetailInfoModelORDFROMADDRESS = @"ORD_FROM_ADDRESS";
NSString *const kBottleDetailInfoModelORDFROMCITY = @"ORD_FROM_CITY";
NSString *const kBottleDetailInfoModelORDFROMCNAME = @"ORD_FROM_CNAME";
NSString *const kBottleDetailInfoModelORDFROMCODE = @"ORD_FROM_CODE";
NSString *const kBottleDetailInfoModelORDFROMCOUNTRY = @"ORD_FROM_COUNTRY";
NSString *const kBottleDetailInfoModelORDFROMCSMS = @"ORD_FROM_CSMS";
NSString *const kBottleDetailInfoModelORDFROMCTEL = @"ORD_FROM_CTEL";
NSString *const kBottleDetailInfoModelORDFROMNAME = @"ORD_FROM_NAME";
NSString *const kBottleDetailInfoModelORDFROMPROPERTY = @"ORD_FROM_PROPERTY";
NSString *const kBottleDetailInfoModelORDFROMPROVINCE = @"ORD_FROM_PROVINCE";
NSString *const kBottleDetailInfoModelORDFROMREGION = @"ORD_FROM_REGION";
NSString *const kBottleDetailInfoModelORDFROMSITE = @"ORD_FROM_SITE";
NSString *const kBottleDetailInfoModelORDFROMZIP = @"ORD_FROM_ZIP";
NSString *const kBottleDetailInfoModelORDGROUPNO = @"ORD_GROUP_NO";
NSString *const kBottleDetailInfoModelORDISSUEQTY = @"ORD_ISSUE_QTY";
NSString *const kBottleDetailInfoModelORDNO = @"ORD_NO";
NSString *const kBottleDetailInfoModelORDNOCLIENT = @"ORD_NO_CLIENT";
NSString *const kBottleDetailInfoModelORDQTY = @"ORD_QTY";
NSString *const kBottleDetailInfoModelORDQTYDELIVERY = @"ORD_QTY_DELIVERY";
NSString *const kBottleDetailInfoModelORDSTATE = @"ORD_STATE";
NSString *const kBottleDetailInfoModelORDTOADDRESS = @"ORD_TO_ADDRESS";
NSString *const kBottleDetailInfoModelORDTOCITY = @"ORD_TO_CITY";
NSString *const kBottleDetailInfoModelORDTOCNAME = @"ORD_TO_CNAME";
NSString *const kBottleDetailInfoModelORDTOCODE = @"ORD_TO_CODE";
NSString *const kBottleDetailInfoModelORDTOCOUNTRY = @"ORD_TO_COUNTRY";
NSString *const kBottleDetailInfoModelORDTOCSMS = @"ORD_TO_CSMS";
NSString *const kBottleDetailInfoModelORDTOCTEL = @"ORD_TO_CTEL";
NSString *const kBottleDetailInfoModelORDTOIMAGE = @"ORD_TO_IMAGE";
NSString *const kBottleDetailInfoModelORDTOIMAGE1 = @"ORD_TO_IMAGE1";
NSString *const kBottleDetailInfoModelORDTOIMAGE2 = @"ORD_TO_IMAGE2";
NSString *const kBottleDetailInfoModelORDTONAME = @"ORD_TO_NAME";
NSString *const kBottleDetailInfoModelORDTOPROPERTY = @"ORD_TO_PROPERTY";
NSString *const kBottleDetailInfoModelORDTOPROVINCE = @"ORD_TO_PROVINCE";
NSString *const kBottleDetailInfoModelORDTOREGION = @"ORD_TO_REGION";
NSString *const kBottleDetailInfoModelORDTOSITE = @"ORD_TO_SITE";
NSString *const kBottleDetailInfoModelORDTOZIP = @"ORD_TO_ZIP";
NSString *const kBottleDetailInfoModelORDWORKFLOW = @"ORD_WORKFLOW";
NSString *const kBottleDetailInfoModelOTSDELIVERYACTUAL = @"OTS_DELIVERY_ACTUAL";
NSString *const kBottleDetailInfoModelTMSDATECONFIRMED = @"TMS_DATE_CONFIRMED";
NSString *const kBottleDetailInfoModelTMSDRIVERIDX = @"TMS_DRIVER_IDX";
NSString *const kBottleDetailInfoModelTMSDRIVERNAME = @"TMS_DRIVER_NAME";
NSString *const kBottleDetailInfoModelTMSDRIVERTEL = @"TMS_DRIVER_TEL";
NSString *const kBottleDetailInfoModelTMSFLEETIDX = @"TMS_FLEET_IDX";
NSString *const kBottleDetailInfoModelTMSFLEETNAME = @"TMS_FLEET_NAME";
NSString *const kBottleDetailInfoModelTMSPLATENUMBER = @"TMS_PLATE_NUMBER";
NSString *const kBottleDetailInfoModelTMSVEHICLEIDX = @"TMS_VEHICLE_IDX";
NSString *const kBottleDetailInfoModelTMSVEHICLESIZE = @"TMS_VEHICLE_SIZE";
NSString *const kBottleDetailInfoModelTMSVEHICLETYPE = @"TMS_VEHICLE_TYPE";


@interface BottleDetailInfoModel ()
@end
@implementation BottleDetailInfoModel

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(![dictionary[kBottleDetailInfoModelIDX] isKindOfClass:[NSNull class]]){
        self.iDX = dictionary[kBottleDetailInfoModelIDX];
    }
    if(![dictionary[kBottleDetailInfoModelORDDATEADD] isKindOfClass:[NSNull class]]){
        self.oRDDATEADD = dictionary[kBottleDetailInfoModelORDDATEADD];
    }
    if(![dictionary[kBottleDetailInfoModelORDENTIDX] isKindOfClass:[NSNull class]]){
        self.oRDENTIDX = dictionary[kBottleDetailInfoModelORDENTIDX];
    }
    if(![dictionary[kBottleDetailInfoModelORDFROMADDRESS] isKindOfClass:[NSNull class]]){
        self.oRDFROMADDRESS = dictionary[kBottleDetailInfoModelORDFROMADDRESS];
    }
    if(![dictionary[kBottleDetailInfoModelORDFROMCITY] isKindOfClass:[NSNull class]]){
        self.oRDFROMCITY = dictionary[kBottleDetailInfoModelORDFROMCITY];
    }
    if(![dictionary[kBottleDetailInfoModelORDFROMCNAME] isKindOfClass:[NSNull class]]){
        self.oRDFROMCNAME = dictionary[kBottleDetailInfoModelORDFROMCNAME];
    }
    if(![dictionary[kBottleDetailInfoModelORDFROMCODE] isKindOfClass:[NSNull class]]){
        self.oRDFROMCODE = dictionary[kBottleDetailInfoModelORDFROMCODE];
    }
    if(![dictionary[kBottleDetailInfoModelORDFROMCOUNTRY] isKindOfClass:[NSNull class]]){
        self.oRDFROMCOUNTRY = dictionary[kBottleDetailInfoModelORDFROMCOUNTRY];
    }
    if(![dictionary[kBottleDetailInfoModelORDFROMCSMS] isKindOfClass:[NSNull class]]){
        self.oRDFROMCSMS = dictionary[kBottleDetailInfoModelORDFROMCSMS];
    }
    if(![dictionary[kBottleDetailInfoModelORDFROMCTEL] isKindOfClass:[NSNull class]]){
        self.oRDFROMCTEL = dictionary[kBottleDetailInfoModelORDFROMCTEL];
    }
    if(![dictionary[kBottleDetailInfoModelORDFROMNAME] isKindOfClass:[NSNull class]]){
        self.oRDFROMNAME = dictionary[kBottleDetailInfoModelORDFROMNAME];
    }
    if(![dictionary[kBottleDetailInfoModelORDFROMPROPERTY] isKindOfClass:[NSNull class]]){
        self.oRDFROMPROPERTY = dictionary[kBottleDetailInfoModelORDFROMPROPERTY];
    }
    if(![dictionary[kBottleDetailInfoModelORDFROMPROVINCE] isKindOfClass:[NSNull class]]){
        self.oRDFROMPROVINCE = dictionary[kBottleDetailInfoModelORDFROMPROVINCE];
    }
    if(![dictionary[kBottleDetailInfoModelORDFROMREGION] isKindOfClass:[NSNull class]]){
        self.oRDFROMREGION = dictionary[kBottleDetailInfoModelORDFROMREGION];
    }
    if(![dictionary[kBottleDetailInfoModelORDFROMSITE] isKindOfClass:[NSNull class]]){
        self.oRDFROMSITE = dictionary[kBottleDetailInfoModelORDFROMSITE];
    }
    if(![dictionary[kBottleDetailInfoModelORDFROMZIP] isKindOfClass:[NSNull class]]){
        self.oRDFROMZIP = dictionary[kBottleDetailInfoModelORDFROMZIP];
    }
    if(![dictionary[kBottleDetailInfoModelORDGROUPNO] isKindOfClass:[NSNull class]]){
        self.oRDGROUPNO = dictionary[kBottleDetailInfoModelORDGROUPNO];
    }
    if(![dictionary[kBottleDetailInfoModelORDISSUEQTY] isKindOfClass:[NSNull class]]){
        self.oRDISSUEQTY = dictionary[kBottleDetailInfoModelORDISSUEQTY];
    }
    if(![dictionary[kBottleDetailInfoModelORDNO] isKindOfClass:[NSNull class]]){
        self.oRDNO = dictionary[kBottleDetailInfoModelORDNO];
    }
    if(![dictionary[kBottleDetailInfoModelORDNOCLIENT] isKindOfClass:[NSNull class]]){
        self.oRDNOCLIENT = dictionary[kBottleDetailInfoModelORDNOCLIENT];
    }
    if(![dictionary[kBottleDetailInfoModelORDQTY] isKindOfClass:[NSNull class]]){
        self.oRDQTY = dictionary[kBottleDetailInfoModelORDQTY];
    }
    if(![dictionary[kBottleDetailInfoModelORDQTYDELIVERY] isKindOfClass:[NSNull class]]){
        self.oRDQTYDELIVERY = dictionary[kBottleDetailInfoModelORDQTYDELIVERY];
    }
    if(![dictionary[kBottleDetailInfoModelORDSTATE] isKindOfClass:[NSNull class]]){
        self.oRDSTATE = dictionary[kBottleDetailInfoModelORDSTATE];
    }
    if(![dictionary[kBottleDetailInfoModelORDTOADDRESS] isKindOfClass:[NSNull class]]){
        self.oRDTOADDRESS = dictionary[kBottleDetailInfoModelORDTOADDRESS];
    }
    if(![dictionary[kBottleDetailInfoModelORDTOCITY] isKindOfClass:[NSNull class]]){
        self.oRDTOCITY = dictionary[kBottleDetailInfoModelORDTOCITY];
    }
    if(![dictionary[kBottleDetailInfoModelORDTOCNAME] isKindOfClass:[NSNull class]]){
        self.oRDTOCNAME = dictionary[kBottleDetailInfoModelORDTOCNAME];
    }
    if(![dictionary[kBottleDetailInfoModelORDTOCODE] isKindOfClass:[NSNull class]]){
        self.oRDTOCODE = dictionary[kBottleDetailInfoModelORDTOCODE];
    }
    if(![dictionary[kBottleDetailInfoModelORDTOCOUNTRY] isKindOfClass:[NSNull class]]){
        self.oRDTOCOUNTRY = dictionary[kBottleDetailInfoModelORDTOCOUNTRY];
    }
    if(![dictionary[kBottleDetailInfoModelORDTOCSMS] isKindOfClass:[NSNull class]]){
        self.oRDTOCSMS = dictionary[kBottleDetailInfoModelORDTOCSMS];
    }
    if(![dictionary[kBottleDetailInfoModelORDTOCTEL] isKindOfClass:[NSNull class]]){
        self.oRDTOCTEL = dictionary[kBottleDetailInfoModelORDTOCTEL];
    }
    if(![dictionary[kBottleDetailInfoModelORDTOIMAGE] isKindOfClass:[NSNull class]]){
        self.oRDTOIMAGE = dictionary[kBottleDetailInfoModelORDTOIMAGE];
    }
    if(![dictionary[kBottleDetailInfoModelORDTOIMAGE1] isKindOfClass:[NSNull class]]){
        self.oRDTOIMAGE1 = dictionary[kBottleDetailInfoModelORDTOIMAGE1];
    }
    if(![dictionary[kBottleDetailInfoModelORDTOIMAGE2] isKindOfClass:[NSNull class]]){
        self.oRDTOIMAGE2 = dictionary[kBottleDetailInfoModelORDTOIMAGE2];
    }
    if(![dictionary[kBottleDetailInfoModelORDTONAME] isKindOfClass:[NSNull class]]){
        self.oRDTONAME = dictionary[kBottleDetailInfoModelORDTONAME];
    }
    if(![dictionary[kBottleDetailInfoModelORDTOPROPERTY] isKindOfClass:[NSNull class]]){
        self.oRDTOPROPERTY = dictionary[kBottleDetailInfoModelORDTOPROPERTY];
    }
    if(![dictionary[kBottleDetailInfoModelORDTOPROVINCE] isKindOfClass:[NSNull class]]){
        self.oRDTOPROVINCE = dictionary[kBottleDetailInfoModelORDTOPROVINCE];
    }
    if(![dictionary[kBottleDetailInfoModelORDTOREGION] isKindOfClass:[NSNull class]]){
        self.oRDTOREGION = dictionary[kBottleDetailInfoModelORDTOREGION];
    }
    if(![dictionary[kBottleDetailInfoModelORDTOSITE] isKindOfClass:[NSNull class]]){
        self.oRDTOSITE = dictionary[kBottleDetailInfoModelORDTOSITE];
    }
    if(![dictionary[kBottleDetailInfoModelORDTOZIP] isKindOfClass:[NSNull class]]){
        self.oRDTOZIP = dictionary[kBottleDetailInfoModelORDTOZIP];
    }
    if(![dictionary[kBottleDetailInfoModelORDWORKFLOW] isKindOfClass:[NSNull class]]){
        self.oRDWORKFLOW = dictionary[kBottleDetailInfoModelORDWORKFLOW];
    }
    if(![dictionary[kBottleDetailInfoModelOTSDELIVERYACTUAL] isKindOfClass:[NSNull class]]){
        self.oTSDELIVERYACTUAL = dictionary[kBottleDetailInfoModelOTSDELIVERYACTUAL];
    }
    if(![dictionary[kBottleDetailInfoModelTMSDATECONFIRMED] isKindOfClass:[NSNull class]]){
        self.tMSDATECONFIRMED = dictionary[kBottleDetailInfoModelTMSDATECONFIRMED];
    }
    if(![dictionary[kBottleDetailInfoModelTMSDRIVERIDX] isKindOfClass:[NSNull class]]){
        self.tMSDRIVERIDX = dictionary[kBottleDetailInfoModelTMSDRIVERIDX];
    }
    if(![dictionary[kBottleDetailInfoModelTMSDRIVERNAME] isKindOfClass:[NSNull class]]){
        self.tMSDRIVERNAME = dictionary[kBottleDetailInfoModelTMSDRIVERNAME];
    }
    if(![dictionary[kBottleDetailInfoModelTMSDRIVERTEL] isKindOfClass:[NSNull class]]){
        self.tMSDRIVERTEL = dictionary[kBottleDetailInfoModelTMSDRIVERTEL];
    }
    if(![dictionary[kBottleDetailInfoModelTMSFLEETIDX] isKindOfClass:[NSNull class]]){
        self.tMSFLEETIDX = dictionary[kBottleDetailInfoModelTMSFLEETIDX];
    }
    if(![dictionary[kBottleDetailInfoModelTMSFLEETNAME] isKindOfClass:[NSNull class]]){
        self.tMSFLEETNAME = dictionary[kBottleDetailInfoModelTMSFLEETNAME];
    }
    if(![dictionary[kBottleDetailInfoModelTMSPLATENUMBER] isKindOfClass:[NSNull class]]){
        self.tMSPLATENUMBER = dictionary[kBottleDetailInfoModelTMSPLATENUMBER];
    }
    if(![dictionary[kBottleDetailInfoModelTMSVEHICLEIDX] isKindOfClass:[NSNull class]]){
        self.tMSVEHICLEIDX = dictionary[kBottleDetailInfoModelTMSVEHICLEIDX];
    }
    if(![dictionary[kBottleDetailInfoModelTMSVEHICLESIZE] isKindOfClass:[NSNull class]]){
        self.tMSVEHICLESIZE = dictionary[kBottleDetailInfoModelTMSVEHICLESIZE];
    }
    if(![dictionary[kBottleDetailInfoModelTMSVEHICLETYPE] isKindOfClass:[NSNull class]]){
        self.tMSVEHICLETYPE = dictionary[kBottleDetailInfoModelTMSVEHICLETYPE];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    if(self.iDX != nil){
        dictionary[kBottleDetailInfoModelIDX] = self.iDX;
    }
    if(self.oRDDATEADD != nil){
        dictionary[kBottleDetailInfoModelORDDATEADD] = self.oRDDATEADD;
    }
    if(self.oRDENTIDX != nil){
        dictionary[kBottleDetailInfoModelORDENTIDX] = self.oRDENTIDX;
    }
    if(self.oRDFROMADDRESS != nil){
        dictionary[kBottleDetailInfoModelORDFROMADDRESS] = self.oRDFROMADDRESS;
    }
    if(self.oRDFROMCITY != nil){
        dictionary[kBottleDetailInfoModelORDFROMCITY] = self.oRDFROMCITY;
    }
    if(self.oRDFROMCNAME != nil){
        dictionary[kBottleDetailInfoModelORDFROMCNAME] = self.oRDFROMCNAME;
    }
    if(self.oRDFROMCODE != nil){
        dictionary[kBottleDetailInfoModelORDFROMCODE] = self.oRDFROMCODE;
    }
    if(self.oRDFROMCOUNTRY != nil){
        dictionary[kBottleDetailInfoModelORDFROMCOUNTRY] = self.oRDFROMCOUNTRY;
    }
    if(self.oRDFROMCSMS != nil){
        dictionary[kBottleDetailInfoModelORDFROMCSMS] = self.oRDFROMCSMS;
    }
    if(self.oRDFROMCTEL != nil){
        dictionary[kBottleDetailInfoModelORDFROMCTEL] = self.oRDFROMCTEL;
    }
    if(self.oRDFROMNAME != nil){
        dictionary[kBottleDetailInfoModelORDFROMNAME] = self.oRDFROMNAME;
    }
    if(self.oRDFROMPROPERTY != nil){
        dictionary[kBottleDetailInfoModelORDFROMPROPERTY] = self.oRDFROMPROPERTY;
    }
    if(self.oRDFROMPROVINCE != nil){
        dictionary[kBottleDetailInfoModelORDFROMPROVINCE] = self.oRDFROMPROVINCE;
    }
    if(self.oRDFROMREGION != nil){
        dictionary[kBottleDetailInfoModelORDFROMREGION] = self.oRDFROMREGION;
    }
    if(self.oRDFROMSITE != nil){
        dictionary[kBottleDetailInfoModelORDFROMSITE] = self.oRDFROMSITE;
    }
    if(self.oRDFROMZIP != nil){
        dictionary[kBottleDetailInfoModelORDFROMZIP] = self.oRDFROMZIP;
    }
    if(self.oRDGROUPNO != nil){
        dictionary[kBottleDetailInfoModelORDGROUPNO] = self.oRDGROUPNO;
    }
    if(self.oRDISSUEQTY != nil){
        dictionary[kBottleDetailInfoModelORDISSUEQTY] = self.oRDISSUEQTY;
    }
    if(self.oRDNO != nil){
        dictionary[kBottleDetailInfoModelORDNO] = self.oRDNO;
    }
    if(self.oRDNOCLIENT != nil){
        dictionary[kBottleDetailInfoModelORDNOCLIENT] = self.oRDNOCLIENT;
    }
    if(self.oRDQTY != nil){
        dictionary[kBottleDetailInfoModelORDQTY] = self.oRDQTY;
    }
    if(self.oRDQTYDELIVERY != nil){
        dictionary[kBottleDetailInfoModelORDQTYDELIVERY] = self.oRDQTYDELIVERY;
    }
    if(self.oRDSTATE != nil){
        dictionary[kBottleDetailInfoModelORDSTATE] = self.oRDSTATE;
    }
    if(self.oRDTOADDRESS != nil){
        dictionary[kBottleDetailInfoModelORDTOADDRESS] = self.oRDTOADDRESS;
    }
    if(self.oRDTOCITY != nil){
        dictionary[kBottleDetailInfoModelORDTOCITY] = self.oRDTOCITY;
    }
    if(self.oRDTOCNAME != nil){
        dictionary[kBottleDetailInfoModelORDTOCNAME] = self.oRDTOCNAME;
    }
    if(self.oRDTOCODE != nil){
        dictionary[kBottleDetailInfoModelORDTOCODE] = self.oRDTOCODE;
    }
    if(self.oRDTOCOUNTRY != nil){
        dictionary[kBottleDetailInfoModelORDTOCOUNTRY] = self.oRDTOCOUNTRY;
    }
    if(self.oRDTOCSMS != nil){
        dictionary[kBottleDetailInfoModelORDTOCSMS] = self.oRDTOCSMS;
    }
    if(self.oRDTOCTEL != nil){
        dictionary[kBottleDetailInfoModelORDTOCTEL] = self.oRDTOCTEL;
    }
    if(self.oRDTOIMAGE != nil){
        dictionary[kBottleDetailInfoModelORDTOIMAGE] = self.oRDTOIMAGE;
    }
    if(self.oRDTOIMAGE1 != nil){
        dictionary[kBottleDetailInfoModelORDTOIMAGE1] = self.oRDTOIMAGE1;
    }
    if(self.oRDTOIMAGE2 != nil){
        dictionary[kBottleDetailInfoModelORDTOIMAGE2] = self.oRDTOIMAGE2;
    }
    if(self.oRDTONAME != nil){
        dictionary[kBottleDetailInfoModelORDTONAME] = self.oRDTONAME;
    }
    if(self.oRDTOPROPERTY != nil){
        dictionary[kBottleDetailInfoModelORDTOPROPERTY] = self.oRDTOPROPERTY;
    }
    if(self.oRDTOPROVINCE != nil){
        dictionary[kBottleDetailInfoModelORDTOPROVINCE] = self.oRDTOPROVINCE;
    }
    if(self.oRDTOREGION != nil){
        dictionary[kBottleDetailInfoModelORDTOREGION] = self.oRDTOREGION;
    }
    if(self.oRDTOSITE != nil){
        dictionary[kBottleDetailInfoModelORDTOSITE] = self.oRDTOSITE;
    }
    if(self.oRDTOZIP != nil){
        dictionary[kBottleDetailInfoModelORDTOZIP] = self.oRDTOZIP;
    }
    if(self.oRDWORKFLOW != nil){
        dictionary[kBottleDetailInfoModelORDWORKFLOW] = self.oRDWORKFLOW;
    }
    if(self.oTSDELIVERYACTUAL != nil){
        dictionary[kBottleDetailInfoModelOTSDELIVERYACTUAL] = self.oTSDELIVERYACTUAL;
    }
    if(self.tMSDATECONFIRMED != nil){
        dictionary[kBottleDetailInfoModelTMSDATECONFIRMED] = self.tMSDATECONFIRMED;
    }
    if(self.tMSDRIVERIDX != nil){
        dictionary[kBottleDetailInfoModelTMSDRIVERIDX] = self.tMSDRIVERIDX;
    }
    if(self.tMSDRIVERNAME != nil){
        dictionary[kBottleDetailInfoModelTMSDRIVERNAME] = self.tMSDRIVERNAME;
    }
    if(self.tMSDRIVERTEL != nil){
        dictionary[kBottleDetailInfoModelTMSDRIVERTEL] = self.tMSDRIVERTEL;
    }
    if(self.tMSFLEETIDX != nil){
        dictionary[kBottleDetailInfoModelTMSFLEETIDX] = self.tMSFLEETIDX;
    }
    if(self.tMSFLEETNAME != nil){
        dictionary[kBottleDetailInfoModelTMSFLEETNAME] = self.tMSFLEETNAME;
    }
    if(self.tMSPLATENUMBER != nil){
        dictionary[kBottleDetailInfoModelTMSPLATENUMBER] = self.tMSPLATENUMBER;
    }
    if(self.tMSVEHICLEIDX != nil){
        dictionary[kBottleDetailInfoModelTMSVEHICLEIDX] = self.tMSVEHICLEIDX;
    }
    if(self.tMSVEHICLESIZE != nil){
        dictionary[kBottleDetailInfoModelTMSVEHICLESIZE] = self.tMSVEHICLESIZE;
    }
    if(self.tMSVEHICLETYPE != nil){
        dictionary[kBottleDetailInfoModelTMSVEHICLETYPE] = self.tMSVEHICLETYPE;
    }
    return dictionary;
    
}

/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    if(self.iDX != nil){
        [aCoder encodeObject:self.iDX forKey:kBottleDetailInfoModelIDX];
    }
    if(self.oRDDATEADD != nil){
        [aCoder encodeObject:self.oRDDATEADD forKey:kBottleDetailInfoModelORDDATEADD];
    }
    if(self.oRDENTIDX != nil){
        [aCoder encodeObject:self.oRDENTIDX forKey:kBottleDetailInfoModelORDENTIDX];
    }
    if(self.oRDFROMADDRESS != nil){
        [aCoder encodeObject:self.oRDFROMADDRESS forKey:kBottleDetailInfoModelORDFROMADDRESS];
    }
    if(self.oRDFROMCITY != nil){
        [aCoder encodeObject:self.oRDFROMCITY forKey:kBottleDetailInfoModelORDFROMCITY];
    }
    if(self.oRDFROMCNAME != nil){
        [aCoder encodeObject:self.oRDFROMCNAME forKey:kBottleDetailInfoModelORDFROMCNAME];
    }
    if(self.oRDFROMCODE != nil){
        [aCoder encodeObject:self.oRDFROMCODE forKey:kBottleDetailInfoModelORDFROMCODE];
    }
    if(self.oRDFROMCOUNTRY != nil){
        [aCoder encodeObject:self.oRDFROMCOUNTRY forKey:kBottleDetailInfoModelORDFROMCOUNTRY];
    }
    if(self.oRDFROMCSMS != nil){
        [aCoder encodeObject:self.oRDFROMCSMS forKey:kBottleDetailInfoModelORDFROMCSMS];
    }
    if(self.oRDFROMCTEL != nil){
        [aCoder encodeObject:self.oRDFROMCTEL forKey:kBottleDetailInfoModelORDFROMCTEL];
    }
    if(self.oRDFROMNAME != nil){
        [aCoder encodeObject:self.oRDFROMNAME forKey:kBottleDetailInfoModelORDFROMNAME];
    }
    if(self.oRDFROMPROPERTY != nil){
        [aCoder encodeObject:self.oRDFROMPROPERTY forKey:kBottleDetailInfoModelORDFROMPROPERTY];
    }
    if(self.oRDFROMPROVINCE != nil){
        [aCoder encodeObject:self.oRDFROMPROVINCE forKey:kBottleDetailInfoModelORDFROMPROVINCE];
    }
    if(self.oRDFROMREGION != nil){
        [aCoder encodeObject:self.oRDFROMREGION forKey:kBottleDetailInfoModelORDFROMREGION];
    }
    if(self.oRDFROMSITE != nil){
        [aCoder encodeObject:self.oRDFROMSITE forKey:kBottleDetailInfoModelORDFROMSITE];
    }
    if(self.oRDFROMZIP != nil){
        [aCoder encodeObject:self.oRDFROMZIP forKey:kBottleDetailInfoModelORDFROMZIP];
    }
    if(self.oRDGROUPNO != nil){
        [aCoder encodeObject:self.oRDGROUPNO forKey:kBottleDetailInfoModelORDGROUPNO];
    }
    if(self.oRDISSUEQTY != nil){
        [aCoder encodeObject:self.oRDISSUEQTY forKey:kBottleDetailInfoModelORDISSUEQTY];
    }
    if(self.oRDNO != nil){
        [aCoder encodeObject:self.oRDNO forKey:kBottleDetailInfoModelORDNO];
    }
    if(self.oRDNOCLIENT != nil){
        [aCoder encodeObject:self.oRDNOCLIENT forKey:kBottleDetailInfoModelORDNOCLIENT];
    }
    if(self.oRDQTY != nil){
        [aCoder encodeObject:self.oRDQTY forKey:kBottleDetailInfoModelORDQTY];
    }
    if(self.oRDQTYDELIVERY != nil){
        [aCoder encodeObject:self.oRDQTYDELIVERY forKey:kBottleDetailInfoModelORDQTYDELIVERY];
    }
    if(self.oRDSTATE != nil){
        [aCoder encodeObject:self.oRDSTATE forKey:kBottleDetailInfoModelORDSTATE];
    }
    if(self.oRDTOADDRESS != nil){
        [aCoder encodeObject:self.oRDTOADDRESS forKey:kBottleDetailInfoModelORDTOADDRESS];
    }
    if(self.oRDTOCITY != nil){
        [aCoder encodeObject:self.oRDTOCITY forKey:kBottleDetailInfoModelORDTOCITY];
    }
    if(self.oRDTOCNAME != nil){
        [aCoder encodeObject:self.oRDTOCNAME forKey:kBottleDetailInfoModelORDTOCNAME];
    }
    if(self.oRDTOCODE != nil){
        [aCoder encodeObject:self.oRDTOCODE forKey:kBottleDetailInfoModelORDTOCODE];
    }
    if(self.oRDTOCOUNTRY != nil){
        [aCoder encodeObject:self.oRDTOCOUNTRY forKey:kBottleDetailInfoModelORDTOCOUNTRY];
    }
    if(self.oRDTOCSMS != nil){
        [aCoder encodeObject:self.oRDTOCSMS forKey:kBottleDetailInfoModelORDTOCSMS];
    }
    if(self.oRDTOCTEL != nil){
        [aCoder encodeObject:self.oRDTOCTEL forKey:kBottleDetailInfoModelORDTOCTEL];
    }
    if(self.oRDTOIMAGE != nil){
        [aCoder encodeObject:self.oRDTOIMAGE forKey:kBottleDetailInfoModelORDTOIMAGE];
    }
    if(self.oRDTOIMAGE1 != nil){
        [aCoder encodeObject:self.oRDTOIMAGE1 forKey:kBottleDetailInfoModelORDTOIMAGE1];
    }
    if(self.oRDTOIMAGE2 != nil){
        [aCoder encodeObject:self.oRDTOIMAGE2 forKey:kBottleDetailInfoModelORDTOIMAGE2];
    }
    if(self.oRDTONAME != nil){
        [aCoder encodeObject:self.oRDTONAME forKey:kBottleDetailInfoModelORDTONAME];
    }
    if(self.oRDTOPROPERTY != nil){
        [aCoder encodeObject:self.oRDTOPROPERTY forKey:kBottleDetailInfoModelORDTOPROPERTY];
    }
    if(self.oRDTOPROVINCE != nil){
        [aCoder encodeObject:self.oRDTOPROVINCE forKey:kBottleDetailInfoModelORDTOPROVINCE];
    }
    if(self.oRDTOREGION != nil){
        [aCoder encodeObject:self.oRDTOREGION forKey:kBottleDetailInfoModelORDTOREGION];
    }
    if(self.oRDTOSITE != nil){
        [aCoder encodeObject:self.oRDTOSITE forKey:kBottleDetailInfoModelORDTOSITE];
    }
    if(self.oRDTOZIP != nil){
        [aCoder encodeObject:self.oRDTOZIP forKey:kBottleDetailInfoModelORDTOZIP];
    }
    if(self.oRDWORKFLOW != nil){
        [aCoder encodeObject:self.oRDWORKFLOW forKey:kBottleDetailInfoModelORDWORKFLOW];
    }
    if(self.oTSDELIVERYACTUAL != nil){
        [aCoder encodeObject:self.oTSDELIVERYACTUAL forKey:kBottleDetailInfoModelOTSDELIVERYACTUAL];
    }
    if(self.tMSDATECONFIRMED != nil){
        [aCoder encodeObject:self.tMSDATECONFIRMED forKey:kBottleDetailInfoModelTMSDATECONFIRMED];
    }
    if(self.tMSDRIVERIDX != nil){
        [aCoder encodeObject:self.tMSDRIVERIDX forKey:kBottleDetailInfoModelTMSDRIVERIDX];
    }
    if(self.tMSDRIVERNAME != nil){
        [aCoder encodeObject:self.tMSDRIVERNAME forKey:kBottleDetailInfoModelTMSDRIVERNAME];
    }
    if(self.tMSDRIVERTEL != nil){
        [aCoder encodeObject:self.tMSDRIVERTEL forKey:kBottleDetailInfoModelTMSDRIVERTEL];
    }
    if(self.tMSFLEETIDX != nil){
        [aCoder encodeObject:self.tMSFLEETIDX forKey:kBottleDetailInfoModelTMSFLEETIDX];
    }
    if(self.tMSFLEETNAME != nil){
        [aCoder encodeObject:self.tMSFLEETNAME forKey:kBottleDetailInfoModelTMSFLEETNAME];
    }
    if(self.tMSPLATENUMBER != nil){
        [aCoder encodeObject:self.tMSPLATENUMBER forKey:kBottleDetailInfoModelTMSPLATENUMBER];
    }
    if(self.tMSVEHICLEIDX != nil){
        [aCoder encodeObject:self.tMSVEHICLEIDX forKey:kBottleDetailInfoModelTMSVEHICLEIDX];
    }
    if(self.tMSVEHICLESIZE != nil){
        [aCoder encodeObject:self.tMSVEHICLESIZE forKey:kBottleDetailInfoModelTMSVEHICLESIZE];
    }
    if(self.tMSVEHICLETYPE != nil){
        [aCoder encodeObject:self.tMSVEHICLETYPE forKey:kBottleDetailInfoModelTMSVEHICLETYPE];
    }
    
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    self.iDX = [aDecoder decodeObjectForKey:kBottleDetailInfoModelIDX];
    self.oRDDATEADD = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDDATEADD];
    self.oRDENTIDX = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDENTIDX];
    self.oRDFROMADDRESS = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDFROMADDRESS];
    self.oRDFROMCITY = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDFROMCITY];
    self.oRDFROMCNAME = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDFROMCNAME];
    self.oRDFROMCODE = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDFROMCODE];
    self.oRDFROMCOUNTRY = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDFROMCOUNTRY];
    self.oRDFROMCSMS = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDFROMCSMS];
    self.oRDFROMCTEL = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDFROMCTEL];
    self.oRDFROMNAME = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDFROMNAME];
    self.oRDFROMPROPERTY = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDFROMPROPERTY];
    self.oRDFROMPROVINCE = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDFROMPROVINCE];
    self.oRDFROMREGION = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDFROMREGION];
    self.oRDFROMSITE = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDFROMSITE];
    self.oRDFROMZIP = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDFROMZIP];
    self.oRDGROUPNO = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDGROUPNO];
    self.oRDISSUEQTY = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDISSUEQTY];
    self.oRDNO = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDNO];
    self.oRDNOCLIENT = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDNOCLIENT];
    self.oRDQTY = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDQTY];
    self.oRDQTYDELIVERY = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDQTYDELIVERY];
    self.oRDSTATE = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDSTATE];
    self.oRDTOADDRESS = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDTOADDRESS];
    self.oRDTOCITY = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDTOCITY];
    self.oRDTOCNAME = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDTOCNAME];
    self.oRDTOCODE = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDTOCODE];
    self.oRDTOCOUNTRY = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDTOCOUNTRY];
    self.oRDTOCSMS = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDTOCSMS];
    self.oRDTOCTEL = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDTOCTEL];
    self.oRDTOIMAGE = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDTOIMAGE];
    self.oRDTOIMAGE1 = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDTOIMAGE1];
    self.oRDTOIMAGE2 = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDTOIMAGE2];
    self.oRDTONAME = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDTONAME];
    self.oRDTOPROPERTY = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDTOPROPERTY];
    self.oRDTOPROVINCE = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDTOPROVINCE];
    self.oRDTOREGION = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDTOREGION];
    self.oRDTOSITE = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDTOSITE];
    self.oRDTOZIP = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDTOZIP];
    self.oRDWORKFLOW = [aDecoder decodeObjectForKey:kBottleDetailInfoModelORDWORKFLOW];
    self.oTSDELIVERYACTUAL = [aDecoder decodeObjectForKey:kBottleDetailInfoModelOTSDELIVERYACTUAL];
    self.tMSDATECONFIRMED = [aDecoder decodeObjectForKey:kBottleDetailInfoModelTMSDATECONFIRMED];
    self.tMSDRIVERIDX = [aDecoder decodeObjectForKey:kBottleDetailInfoModelTMSDRIVERIDX];
    self.tMSDRIVERNAME = [aDecoder decodeObjectForKey:kBottleDetailInfoModelTMSDRIVERNAME];
    self.tMSDRIVERTEL = [aDecoder decodeObjectForKey:kBottleDetailInfoModelTMSDRIVERTEL];
    self.tMSFLEETIDX = [aDecoder decodeObjectForKey:kBottleDetailInfoModelTMSFLEETIDX];
    self.tMSFLEETNAME = [aDecoder decodeObjectForKey:kBottleDetailInfoModelTMSFLEETNAME];
    self.tMSPLATENUMBER = [aDecoder decodeObjectForKey:kBottleDetailInfoModelTMSPLATENUMBER];
    self.tMSVEHICLEIDX = [aDecoder decodeObjectForKey:kBottleDetailInfoModelTMSVEHICLEIDX];
    self.tMSVEHICLESIZE = [aDecoder decodeObjectForKey:kBottleDetailInfoModelTMSVEHICLESIZE];
    self.tMSVEHICLETYPE = [aDecoder decodeObjectForKey:kBottleDetailInfoModelTMSVEHICLETYPE];
    return self;
    
}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
    BottleDetailInfoModel *copy = [BottleDetailInfoModel new];
    
    copy.iDX = [self.iDX copy];
    copy.oRDDATEADD = [self.oRDDATEADD copy];
    copy.oRDENTIDX = [self.oRDENTIDX copy];
    copy.oRDFROMADDRESS = [self.oRDFROMADDRESS copy];
    copy.oRDFROMCITY = [self.oRDFROMCITY copy];
    copy.oRDFROMCNAME = [self.oRDFROMCNAME copy];
    copy.oRDFROMCODE = [self.oRDFROMCODE copy];
    copy.oRDFROMCOUNTRY = [self.oRDFROMCOUNTRY copy];
    copy.oRDFROMCSMS = [self.oRDFROMCSMS copy];
    copy.oRDFROMCTEL = [self.oRDFROMCTEL copy];
    copy.oRDFROMNAME = [self.oRDFROMNAME copy];
    copy.oRDFROMPROPERTY = [self.oRDFROMPROPERTY copy];
    copy.oRDFROMPROVINCE = [self.oRDFROMPROVINCE copy];
    copy.oRDFROMREGION = [self.oRDFROMREGION copy];
    copy.oRDFROMSITE = [self.oRDFROMSITE copy];
    copy.oRDFROMZIP = [self.oRDFROMZIP copy];
    copy.oRDGROUPNO = [self.oRDGROUPNO copy];
    copy.oRDISSUEQTY = [self.oRDISSUEQTY copy];
    copy.oRDNO = [self.oRDNO copy];
    copy.oRDNOCLIENT = [self.oRDNOCLIENT copy];
    copy.oRDQTY = [self.oRDQTY copy];
    copy.oRDQTYDELIVERY = [self.oRDQTYDELIVERY copy];
    copy.oRDSTATE = [self.oRDSTATE copy];
    copy.oRDTOADDRESS = [self.oRDTOADDRESS copy];
    copy.oRDTOCITY = [self.oRDTOCITY copy];
    copy.oRDTOCNAME = [self.oRDTOCNAME copy];
    copy.oRDTOCODE = [self.oRDTOCODE copy];
    copy.oRDTOCOUNTRY = [self.oRDTOCOUNTRY copy];
    copy.oRDTOCSMS = [self.oRDTOCSMS copy];
    copy.oRDTOCTEL = [self.oRDTOCTEL copy];
    copy.oRDTOIMAGE = [self.oRDTOIMAGE copy];
    copy.oRDTOIMAGE1 = [self.oRDTOIMAGE1 copy];
    copy.oRDTOIMAGE2 = [self.oRDTOIMAGE2 copy];
    copy.oRDTONAME = [self.oRDTONAME copy];
    copy.oRDTOPROPERTY = [self.oRDTOPROPERTY copy];
    copy.oRDTOPROVINCE = [self.oRDTOPROVINCE copy];
    copy.oRDTOREGION = [self.oRDTOREGION copy];
    copy.oRDTOSITE = [self.oRDTOSITE copy];
    copy.oRDTOZIP = [self.oRDTOZIP copy];
    copy.oRDWORKFLOW = [self.oRDWORKFLOW copy];
    copy.oTSDELIVERYACTUAL = [self.oTSDELIVERYACTUAL copy];
    copy.tMSDATECONFIRMED = [self.tMSDATECONFIRMED copy];
    copy.tMSDRIVERIDX = [self.tMSDRIVERIDX copy];
    copy.tMSDRIVERNAME = [self.tMSDRIVERNAME copy];
    copy.tMSDRIVERTEL = [self.tMSDRIVERTEL copy];
    copy.tMSFLEETIDX = [self.tMSFLEETIDX copy];
    copy.tMSFLEETNAME = [self.tMSFLEETNAME copy];
    copy.tMSPLATENUMBER = [self.tMSPLATENUMBER copy];
    copy.tMSVEHICLEIDX = [self.tMSVEHICLEIDX copy];
    copy.tMSVEHICLESIZE = [self.tMSVEHICLESIZE copy];
    copy.tMSVEHICLETYPE = [self.tMSVEHICLETYPE copy];
    
    return copy;
}

@end
