//
//  BottleOrderModel.m
//  Order
//
//  Created by 凯东源 on 2017/11/24.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "BottleOrderModel.h"


NSString *const kBottleOrderModelIDX = @"IDX";
NSString *const kBottleOrderModelORDENTIDX = @"ORD_ENT_IDX";
NSString *const kBottleOrderModelORDFROMADDRESS = @"ORD_FROM_ADDRESS";
NSString *const kBottleOrderModelORDFROMCITY = @"ORD_FROM_CITY";
NSString *const kBottleOrderModelORDFROMCNAME = @"ORD_FROM_CNAME";
NSString *const kBottleOrderModelORDFROMCODE = @"ORD_FROM_CODE";
NSString *const kBottleOrderModelORDFROMCOUNTRY = @"ORD_FROM_COUNTRY";
NSString *const kBottleOrderModelORDFROMCSMS = @"ORD_FROM_CSMS";
NSString *const kBottleOrderModelORDFROMCTEL = @"ORD_FROM_CTEL";
NSString *const kBottleOrderModelORDFROMNAME = @"ORD_FROM_NAME";
NSString *const kBottleOrderModelORDFROMPROPERTY = @"ORD_FROM_PROPERTY";
NSString *const kBottleOrderModelORDFROMPROVINCE = @"ORD_FROM_PROVINCE";
NSString *const kBottleOrderModelORDFROMREGION = @"ORD_FROM_REGION";
NSString *const kBottleOrderModelORDFROMSITE = @"ORD_FROM_SITE";
NSString *const kBottleOrderModelORDFROMZIP = @"ORD_FROM_ZIP";
NSString *const kBottleOrderModelORDGROUPNO = @"ORD_GROUP_NO";
NSString *const kBottleOrderModelORDISSUEQTY = @"ORD_ISSUE_QTY";
NSString *const kBottleOrderModelORDNO = @"ORD_NO";
NSString *const kBottleOrderModelORDNOCLIENT = @"ORD_NO_CLIENT";
NSString *const kBottleOrderModelORDQTY = @"ORD_QTY";
NSString *const kBottleOrderModelORDQTYDELIVERY = @"ORD_QTY_DELIVERY";
NSString *const kBottleOrderModelORDSTATE = @"ORD_STATE";
NSString *const kBottleOrderModelORDTOADDRESS = @"ORD_TO_ADDRESS";
NSString *const kBottleOrderModelORDTOCITY = @"ORD_TO_CITY";
NSString *const kBottleOrderModelORDTOCNAME = @"ORD_TO_CNAME";
NSString *const kBottleOrderModelORDTOCODE = @"ORD_TO_CODE";
NSString *const kBottleOrderModelORDTOCOUNTRY = @"ORD_TO_COUNTRY";
NSString *const kBottleOrderModelORDTOCSMS = @"ORD_TO_CSMS";
NSString *const kBottleOrderModelORDTOCTEL = @"ORD_TO_CTEL";
NSString *const kBottleOrderModelORDTOIMAGE = @"ORD_TO_IMAGE";
NSString *const kBottleOrderModelORDTOIMAGE1 = @"ORD_TO_IMAGE1";
NSString *const kBottleOrderModelORDTOIMAGE2 = @"ORD_TO_IMAGE2";
NSString *const kBottleOrderModelORDTONAME = @"ORD_TO_NAME";
NSString *const kBottleOrderModelORDTOPROPERTY = @"ORD_TO_PROPERTY";
NSString *const kBottleOrderModelORDTOPROVINCE = @"ORD_TO_PROVINCE";
NSString *const kBottleOrderModelORDTOREGION = @"ORD_TO_REGION";
NSString *const kBottleOrderModelORDTOSITE = @"ORD_TO_SITE";
NSString *const kBottleOrderModelORDTOZIP = @"ORD_TO_ZIP";
NSString *const kBottleOrderModelORDWORKFLOW = @"ORD_WORKFLOW";
NSString *const kBottleOrderModelTMSDRIVERIDX = @"TMS_DRIVER_IDX";
NSString *const kBottleOrderModelTMSDRIVERNAME = @"TMS_DRIVER_NAME";
NSString *const kBottleOrderModelTMSDRIVERTEL = @"TMS_DRIVER_TEL";
NSString *const kBottleOrderModelTMSFLEETIDX = @"TMS_FLEET_IDX";
NSString *const kBottleOrderModelTMSFLEETNAME = @"TMS_FLEET_NAME";
NSString *const kBottleOrderModelTMSPLATENUMBER = @"TMS_PLATE_NUMBER";
NSString *const kBottleOrderModelTMSVEHICLEIDX = @"TMS_VEHICLE_IDX";
NSString *const kBottleOrderModelTMSVEHICLESIZE = @"TMS_VEHICLE_SIZE";
NSString *const kBottleOrderModelTMSVEHICLETYPE = @"TMS_VEHICLE_TYPE";


@implementation BottleOrderModel

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(![dictionary[kBottleOrderModelIDX] isKindOfClass:[NSNull class]]){
        self.iDX = dictionary[kBottleOrderModelIDX];
    }
    if(![dictionary[kBottleOrderModelORDENTIDX] isKindOfClass:[NSNull class]]){
        self.oRDENTIDX = dictionary[kBottleOrderModelORDENTIDX];
    }
    if(![dictionary[kBottleOrderModelORDFROMADDRESS] isKindOfClass:[NSNull class]]){
        self.oRDFROMADDRESS = dictionary[kBottleOrderModelORDFROMADDRESS];
    }
    if(![dictionary[kBottleOrderModelORDFROMCITY] isKindOfClass:[NSNull class]]){
        self.oRDFROMCITY = dictionary[kBottleOrderModelORDFROMCITY];
    }
    if(![dictionary[kBottleOrderModelORDFROMCNAME] isKindOfClass:[NSNull class]]){
        self.oRDFROMCNAME = dictionary[kBottleOrderModelORDFROMCNAME];
    }
    if(![dictionary[kBottleOrderModelORDFROMCODE] isKindOfClass:[NSNull class]]){
        self.oRDFROMCODE = dictionary[kBottleOrderModelORDFROMCODE];
    }
    if(![dictionary[kBottleOrderModelORDFROMCOUNTRY] isKindOfClass:[NSNull class]]){
        self.oRDFROMCOUNTRY = dictionary[kBottleOrderModelORDFROMCOUNTRY];
    }
    if(![dictionary[kBottleOrderModelORDFROMCSMS] isKindOfClass:[NSNull class]]){
        self.oRDFROMCSMS = dictionary[kBottleOrderModelORDFROMCSMS];
    }
    if(![dictionary[kBottleOrderModelORDFROMCTEL] isKindOfClass:[NSNull class]]){
        self.oRDFROMCTEL = dictionary[kBottleOrderModelORDFROMCTEL];
    }
    if(![dictionary[kBottleOrderModelORDFROMNAME] isKindOfClass:[NSNull class]]){
        self.oRDFROMNAME = dictionary[kBottleOrderModelORDFROMNAME];
    }
    if(![dictionary[kBottleOrderModelORDFROMPROPERTY] isKindOfClass:[NSNull class]]){
        self.oRDFROMPROPERTY = dictionary[kBottleOrderModelORDFROMPROPERTY];
    }
    if(![dictionary[kBottleOrderModelORDFROMPROVINCE] isKindOfClass:[NSNull class]]){
        self.oRDFROMPROVINCE = dictionary[kBottleOrderModelORDFROMPROVINCE];
    }
    if(![dictionary[kBottleOrderModelORDFROMREGION] isKindOfClass:[NSNull class]]){
        self.oRDFROMREGION = dictionary[kBottleOrderModelORDFROMREGION];
    }
    if(![dictionary[kBottleOrderModelORDFROMSITE] isKindOfClass:[NSNull class]]){
        self.oRDFROMSITE = dictionary[kBottleOrderModelORDFROMSITE];
    }
    if(![dictionary[kBottleOrderModelORDFROMZIP] isKindOfClass:[NSNull class]]){
        self.oRDFROMZIP = dictionary[kBottleOrderModelORDFROMZIP];
    }
    if(![dictionary[kBottleOrderModelORDGROUPNO] isKindOfClass:[NSNull class]]){
        self.oRDGROUPNO = dictionary[kBottleOrderModelORDGROUPNO];
    }
    if(![dictionary[kBottleOrderModelORDISSUEQTY] isKindOfClass:[NSNull class]]){
        self.oRDISSUEQTY = dictionary[kBottleOrderModelORDISSUEQTY];
    }
    if(![dictionary[kBottleOrderModelORDNO] isKindOfClass:[NSNull class]]){
        self.oRDNO = dictionary[kBottleOrderModelORDNO];
    }
    if(![dictionary[kBottleOrderModelORDNOCLIENT] isKindOfClass:[NSNull class]]){
        self.oRDNOCLIENT = dictionary[kBottleOrderModelORDNOCLIENT];
    }
    if(![dictionary[kBottleOrderModelORDQTY] isKindOfClass:[NSNull class]]){
        self.oRDQTY = dictionary[kBottleOrderModelORDQTY];
    }
    if(![dictionary[kBottleOrderModelORDQTYDELIVERY] isKindOfClass:[NSNull class]]){
        self.oRDQTYDELIVERY = dictionary[kBottleOrderModelORDQTYDELIVERY];
    }
    if(![dictionary[kBottleOrderModelORDSTATE] isKindOfClass:[NSNull class]]){
        self.oRDSTATE = dictionary[kBottleOrderModelORDSTATE];
    }
    if(![dictionary[kBottleOrderModelORDTOADDRESS] isKindOfClass:[NSNull class]]){
        self.oRDTOADDRESS = dictionary[kBottleOrderModelORDTOADDRESS];
    }
    if(![dictionary[kBottleOrderModelORDTOCITY] isKindOfClass:[NSNull class]]){
        self.oRDTOCITY = dictionary[kBottleOrderModelORDTOCITY];
    }
    if(![dictionary[kBottleOrderModelORDTOCNAME] isKindOfClass:[NSNull class]]){
        self.oRDTOCNAME = dictionary[kBottleOrderModelORDTOCNAME];
    }
    if(![dictionary[kBottleOrderModelORDTOCODE] isKindOfClass:[NSNull class]]){
        self.oRDTOCODE = dictionary[kBottleOrderModelORDTOCODE];
    }
    if(![dictionary[kBottleOrderModelORDTOCOUNTRY] isKindOfClass:[NSNull class]]){
        self.oRDTOCOUNTRY = dictionary[kBottleOrderModelORDTOCOUNTRY];
    }
    if(![dictionary[kBottleOrderModelORDTOCSMS] isKindOfClass:[NSNull class]]){
        self.oRDTOCSMS = dictionary[kBottleOrderModelORDTOCSMS];
    }
    if(![dictionary[kBottleOrderModelORDTOCTEL] isKindOfClass:[NSNull class]]){
        self.oRDTOCTEL = dictionary[kBottleOrderModelORDTOCTEL];
    }
    if(![dictionary[kBottleOrderModelORDTOIMAGE] isKindOfClass:[NSNull class]]){
        self.oRDTOIMAGE = dictionary[kBottleOrderModelORDTOIMAGE];
    }
    if(![dictionary[kBottleOrderModelORDTOIMAGE1] isKindOfClass:[NSNull class]]){
        self.oRDTOIMAGE1 = dictionary[kBottleOrderModelORDTOIMAGE1];
    }
    if(![dictionary[kBottleOrderModelORDTOIMAGE2] isKindOfClass:[NSNull class]]){
        self.oRDTOIMAGE2 = dictionary[kBottleOrderModelORDTOIMAGE2];
    }
    if(![dictionary[kBottleOrderModelORDTONAME] isKindOfClass:[NSNull class]]){
        self.oRDTONAME = dictionary[kBottleOrderModelORDTONAME];
    }
    if(![dictionary[kBottleOrderModelORDTOPROPERTY] isKindOfClass:[NSNull class]]){
        self.oRDTOPROPERTY = dictionary[kBottleOrderModelORDTOPROPERTY];
    }
    if(![dictionary[kBottleOrderModelORDTOPROVINCE] isKindOfClass:[NSNull class]]){
        self.oRDTOPROVINCE = dictionary[kBottleOrderModelORDTOPROVINCE];
    }
    if(![dictionary[kBottleOrderModelORDTOREGION] isKindOfClass:[NSNull class]]){
        self.oRDTOREGION = dictionary[kBottleOrderModelORDTOREGION];
    }
    if(![dictionary[kBottleOrderModelORDTOSITE] isKindOfClass:[NSNull class]]){
        self.oRDTOSITE = dictionary[kBottleOrderModelORDTOSITE];
    }
    if(![dictionary[kBottleOrderModelORDTOZIP] isKindOfClass:[NSNull class]]){
        self.oRDTOZIP = dictionary[kBottleOrderModelORDTOZIP];
    }
    if(![dictionary[kBottleOrderModelORDWORKFLOW] isKindOfClass:[NSNull class]]){
        self.oRDWORKFLOW = dictionary[kBottleOrderModelORDWORKFLOW];
    }
    if(![dictionary[kBottleOrderModelTMSDRIVERIDX] isKindOfClass:[NSNull class]]){
        self.tMSDRIVERIDX = dictionary[kBottleOrderModelTMSDRIVERIDX];
    }
    if(![dictionary[kBottleOrderModelTMSDRIVERNAME] isKindOfClass:[NSNull class]]){
        self.tMSDRIVERNAME = dictionary[kBottleOrderModelTMSDRIVERNAME];
    }
    if(![dictionary[kBottleOrderModelTMSDRIVERTEL] isKindOfClass:[NSNull class]]){
        self.tMSDRIVERTEL = dictionary[kBottleOrderModelTMSDRIVERTEL];
    }
    if(![dictionary[kBottleOrderModelTMSFLEETIDX] isKindOfClass:[NSNull class]]){
        self.tMSFLEETIDX = dictionary[kBottleOrderModelTMSFLEETIDX];
    }
    if(![dictionary[kBottleOrderModelTMSFLEETNAME] isKindOfClass:[NSNull class]]){
        self.tMSFLEETNAME = dictionary[kBottleOrderModelTMSFLEETNAME];
    }
    if(![dictionary[kBottleOrderModelTMSPLATENUMBER] isKindOfClass:[NSNull class]]){
        self.tMSPLATENUMBER = dictionary[kBottleOrderModelTMSPLATENUMBER];
    }
    if(![dictionary[kBottleOrderModelTMSVEHICLEIDX] isKindOfClass:[NSNull class]]){
        self.tMSVEHICLEIDX = dictionary[kBottleOrderModelTMSVEHICLEIDX];
    }
    if(![dictionary[kBottleOrderModelTMSVEHICLESIZE] isKindOfClass:[NSNull class]]){
        self.tMSVEHICLESIZE = dictionary[kBottleOrderModelTMSVEHICLESIZE];
    }
    if(![dictionary[kBottleOrderModelTMSVEHICLETYPE] isKindOfClass:[NSNull class]]){
        self.tMSVEHICLETYPE = dictionary[kBottleOrderModelTMSVEHICLETYPE];
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
        dictionary[kBottleOrderModelIDX] = self.iDX;
    }
    if(self.oRDENTIDX != nil){
        dictionary[kBottleOrderModelORDENTIDX] = self.oRDENTIDX;
    }
    if(self.oRDFROMADDRESS != nil){
        dictionary[kBottleOrderModelORDFROMADDRESS] = self.oRDFROMADDRESS;
    }
    if(self.oRDFROMCITY != nil){
        dictionary[kBottleOrderModelORDFROMCITY] = self.oRDFROMCITY;
    }
    if(self.oRDFROMCNAME != nil){
        dictionary[kBottleOrderModelORDFROMCNAME] = self.oRDFROMCNAME;
    }
    if(self.oRDFROMCODE != nil){
        dictionary[kBottleOrderModelORDFROMCODE] = self.oRDFROMCODE;
    }
    if(self.oRDFROMCOUNTRY != nil){
        dictionary[kBottleOrderModelORDFROMCOUNTRY] = self.oRDFROMCOUNTRY;
    }
    if(self.oRDFROMCSMS != nil){
        dictionary[kBottleOrderModelORDFROMCSMS] = self.oRDFROMCSMS;
    }
    if(self.oRDFROMCTEL != nil){
        dictionary[kBottleOrderModelORDFROMCTEL] = self.oRDFROMCTEL;
    }
    if(self.oRDFROMNAME != nil){
        dictionary[kBottleOrderModelORDFROMNAME] = self.oRDFROMNAME;
    }
    if(self.oRDFROMPROPERTY != nil){
        dictionary[kBottleOrderModelORDFROMPROPERTY] = self.oRDFROMPROPERTY;
    }
    if(self.oRDFROMPROVINCE != nil){
        dictionary[kBottleOrderModelORDFROMPROVINCE] = self.oRDFROMPROVINCE;
    }
    if(self.oRDFROMREGION != nil){
        dictionary[kBottleOrderModelORDFROMREGION] = self.oRDFROMREGION;
    }
    if(self.oRDFROMSITE != nil){
        dictionary[kBottleOrderModelORDFROMSITE] = self.oRDFROMSITE;
    }
    if(self.oRDFROMZIP != nil){
        dictionary[kBottleOrderModelORDFROMZIP] = self.oRDFROMZIP;
    }
    if(self.oRDGROUPNO != nil){
        dictionary[kBottleOrderModelORDGROUPNO] = self.oRDGROUPNO;
    }
    if(self.oRDISSUEQTY != nil){
        dictionary[kBottleOrderModelORDISSUEQTY] = self.oRDISSUEQTY;
    }
    if(self.oRDNO != nil){
        dictionary[kBottleOrderModelORDNO] = self.oRDNO;
    }
    if(self.oRDNOCLIENT != nil){
        dictionary[kBottleOrderModelORDNOCLIENT] = self.oRDNOCLIENT;
    }
    if(self.oRDQTY != nil){
        dictionary[kBottleOrderModelORDQTY] = self.oRDQTY;
    }
    if(self.oRDQTYDELIVERY != nil){
        dictionary[kBottleOrderModelORDQTYDELIVERY] = self.oRDQTYDELIVERY;
    }
    if(self.oRDSTATE != nil){
        dictionary[kBottleOrderModelORDSTATE] = self.oRDSTATE;
    }
    if(self.oRDTOADDRESS != nil){
        dictionary[kBottleOrderModelORDTOADDRESS] = self.oRDTOADDRESS;
    }
    if(self.oRDTOCITY != nil){
        dictionary[kBottleOrderModelORDTOCITY] = self.oRDTOCITY;
    }
    if(self.oRDTOCNAME != nil){
        dictionary[kBottleOrderModelORDTOCNAME] = self.oRDTOCNAME;
    }
    if(self.oRDTOCODE != nil){
        dictionary[kBottleOrderModelORDTOCODE] = self.oRDTOCODE;
    }
    if(self.oRDTOCOUNTRY != nil){
        dictionary[kBottleOrderModelORDTOCOUNTRY] = self.oRDTOCOUNTRY;
    }
    if(self.oRDTOCSMS != nil){
        dictionary[kBottleOrderModelORDTOCSMS] = self.oRDTOCSMS;
    }
    if(self.oRDTOCTEL != nil){
        dictionary[kBottleOrderModelORDTOCTEL] = self.oRDTOCTEL;
    }
    if(self.oRDTOIMAGE != nil){
        dictionary[kBottleOrderModelORDTOIMAGE] = self.oRDTOIMAGE;
    }
    if(self.oRDTOIMAGE1 != nil){
        dictionary[kBottleOrderModelORDTOIMAGE1] = self.oRDTOIMAGE1;
    }
    if(self.oRDTOIMAGE2 != nil){
        dictionary[kBottleOrderModelORDTOIMAGE2] = self.oRDTOIMAGE2;
    }
    if(self.oRDTONAME != nil){
        dictionary[kBottleOrderModelORDTONAME] = self.oRDTONAME;
    }
    if(self.oRDTOPROPERTY != nil){
        dictionary[kBottleOrderModelORDTOPROPERTY] = self.oRDTOPROPERTY;
    }
    if(self.oRDTOPROVINCE != nil){
        dictionary[kBottleOrderModelORDTOPROVINCE] = self.oRDTOPROVINCE;
    }
    if(self.oRDTOREGION != nil){
        dictionary[kBottleOrderModelORDTOREGION] = self.oRDTOREGION;
    }
    if(self.oRDTOSITE != nil){
        dictionary[kBottleOrderModelORDTOSITE] = self.oRDTOSITE;
    }
    if(self.oRDTOZIP != nil){
        dictionary[kBottleOrderModelORDTOZIP] = self.oRDTOZIP;
    }
    if(self.oRDWORKFLOW != nil){
        dictionary[kBottleOrderModelORDWORKFLOW] = self.oRDWORKFLOW;
    }
    if(self.tMSDRIVERIDX != nil){
        dictionary[kBottleOrderModelTMSDRIVERIDX] = self.tMSDRIVERIDX;
    }
    if(self.tMSDRIVERNAME != nil){
        dictionary[kBottleOrderModelTMSDRIVERNAME] = self.tMSDRIVERNAME;
    }
    if(self.tMSDRIVERTEL != nil){
        dictionary[kBottleOrderModelTMSDRIVERTEL] = self.tMSDRIVERTEL;
    }
    if(self.tMSFLEETIDX != nil){
        dictionary[kBottleOrderModelTMSFLEETIDX] = self.tMSFLEETIDX;
    }
    if(self.tMSFLEETNAME != nil){
        dictionary[kBottleOrderModelTMSFLEETNAME] = self.tMSFLEETNAME;
    }
    if(self.tMSPLATENUMBER != nil){
        dictionary[kBottleOrderModelTMSPLATENUMBER] = self.tMSPLATENUMBER;
    }
    if(self.tMSVEHICLEIDX != nil){
        dictionary[kBottleOrderModelTMSVEHICLEIDX] = self.tMSVEHICLEIDX;
    }
    if(self.tMSVEHICLESIZE != nil){
        dictionary[kBottleOrderModelTMSVEHICLESIZE] = self.tMSVEHICLESIZE;
    }
    if(self.tMSVEHICLETYPE != nil){
        dictionary[kBottleOrderModelTMSVEHICLETYPE] = self.tMSVEHICLETYPE;
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
        [aCoder encodeObject:self.iDX forKey:kBottleOrderModelIDX];
    }
    if(self.oRDENTIDX != nil){
        [aCoder encodeObject:self.oRDENTIDX forKey:kBottleOrderModelORDENTIDX];
    }
    if(self.oRDFROMADDRESS != nil){
        [aCoder encodeObject:self.oRDFROMADDRESS forKey:kBottleOrderModelORDFROMADDRESS];
    }
    if(self.oRDFROMCITY != nil){
        [aCoder encodeObject:self.oRDFROMCITY forKey:kBottleOrderModelORDFROMCITY];
    }
    if(self.oRDFROMCNAME != nil){
        [aCoder encodeObject:self.oRDFROMCNAME forKey:kBottleOrderModelORDFROMCNAME];
    }
    if(self.oRDFROMCODE != nil){
        [aCoder encodeObject:self.oRDFROMCODE forKey:kBottleOrderModelORDFROMCODE];
    }
    if(self.oRDFROMCOUNTRY != nil){
        [aCoder encodeObject:self.oRDFROMCOUNTRY forKey:kBottleOrderModelORDFROMCOUNTRY];
    }
    if(self.oRDFROMCSMS != nil){
        [aCoder encodeObject:self.oRDFROMCSMS forKey:kBottleOrderModelORDFROMCSMS];
    }
    if(self.oRDFROMCTEL != nil){
        [aCoder encodeObject:self.oRDFROMCTEL forKey:kBottleOrderModelORDFROMCTEL];
    }
    if(self.oRDFROMNAME != nil){
        [aCoder encodeObject:self.oRDFROMNAME forKey:kBottleOrderModelORDFROMNAME];
    }
    if(self.oRDFROMPROPERTY != nil){
        [aCoder encodeObject:self.oRDFROMPROPERTY forKey:kBottleOrderModelORDFROMPROPERTY];
    }
    if(self.oRDFROMPROVINCE != nil){
        [aCoder encodeObject:self.oRDFROMPROVINCE forKey:kBottleOrderModelORDFROMPROVINCE];
    }
    if(self.oRDFROMREGION != nil){
        [aCoder encodeObject:self.oRDFROMREGION forKey:kBottleOrderModelORDFROMREGION];
    }
    if(self.oRDFROMSITE != nil){
        [aCoder encodeObject:self.oRDFROMSITE forKey:kBottleOrderModelORDFROMSITE];
    }
    if(self.oRDFROMZIP != nil){
        [aCoder encodeObject:self.oRDFROMZIP forKey:kBottleOrderModelORDFROMZIP];
    }
    if(self.oRDGROUPNO != nil){
        [aCoder encodeObject:self.oRDGROUPNO forKey:kBottleOrderModelORDGROUPNO];
    }
    if(self.oRDISSUEQTY != nil){
        [aCoder encodeObject:self.oRDISSUEQTY forKey:kBottleOrderModelORDISSUEQTY];
    }
    if(self.oRDNO != nil){
        [aCoder encodeObject:self.oRDNO forKey:kBottleOrderModelORDNO];
    }
    if(self.oRDNOCLIENT != nil){
        [aCoder encodeObject:self.oRDNOCLIENT forKey:kBottleOrderModelORDNOCLIENT];
    }
    if(self.oRDQTY != nil){
        [aCoder encodeObject:self.oRDQTY forKey:kBottleOrderModelORDQTY];
    }
    if(self.oRDQTYDELIVERY != nil){
        [aCoder encodeObject:self.oRDQTYDELIVERY forKey:kBottleOrderModelORDQTYDELIVERY];
    }
    if(self.oRDSTATE != nil){
        [aCoder encodeObject:self.oRDSTATE forKey:kBottleOrderModelORDSTATE];
    }
    if(self.oRDTOADDRESS != nil){
        [aCoder encodeObject:self.oRDTOADDRESS forKey:kBottleOrderModelORDTOADDRESS];
    }
    if(self.oRDTOCITY != nil){
        [aCoder encodeObject:self.oRDTOCITY forKey:kBottleOrderModelORDTOCITY];
    }
    if(self.oRDTOCNAME != nil){
        [aCoder encodeObject:self.oRDTOCNAME forKey:kBottleOrderModelORDTOCNAME];
    }
    if(self.oRDTOCODE != nil){
        [aCoder encodeObject:self.oRDTOCODE forKey:kBottleOrderModelORDTOCODE];
    }
    if(self.oRDTOCOUNTRY != nil){
        [aCoder encodeObject:self.oRDTOCOUNTRY forKey:kBottleOrderModelORDTOCOUNTRY];
    }
    if(self.oRDTOCSMS != nil){
        [aCoder encodeObject:self.oRDTOCSMS forKey:kBottleOrderModelORDTOCSMS];
    }
    if(self.oRDTOCTEL != nil){
        [aCoder encodeObject:self.oRDTOCTEL forKey:kBottleOrderModelORDTOCTEL];
    }
    if(self.oRDTOIMAGE != nil){
        [aCoder encodeObject:self.oRDTOIMAGE forKey:kBottleOrderModelORDTOIMAGE];
    }
    if(self.oRDTOIMAGE1 != nil){
        [aCoder encodeObject:self.oRDTOIMAGE1 forKey:kBottleOrderModelORDTOIMAGE1];
    }
    if(self.oRDTOIMAGE2 != nil){
        [aCoder encodeObject:self.oRDTOIMAGE2 forKey:kBottleOrderModelORDTOIMAGE2];
    }
    if(self.oRDTONAME != nil){
        [aCoder encodeObject:self.oRDTONAME forKey:kBottleOrderModelORDTONAME];
    }
    if(self.oRDTOPROPERTY != nil){
        [aCoder encodeObject:self.oRDTOPROPERTY forKey:kBottleOrderModelORDTOPROPERTY];
    }
    if(self.oRDTOPROVINCE != nil){
        [aCoder encodeObject:self.oRDTOPROVINCE forKey:kBottleOrderModelORDTOPROVINCE];
    }
    if(self.oRDTOREGION != nil){
        [aCoder encodeObject:self.oRDTOREGION forKey:kBottleOrderModelORDTOREGION];
    }
    if(self.oRDTOSITE != nil){
        [aCoder encodeObject:self.oRDTOSITE forKey:kBottleOrderModelORDTOSITE];
    }
    if(self.oRDTOZIP != nil){
        [aCoder encodeObject:self.oRDTOZIP forKey:kBottleOrderModelORDTOZIP];
    }
    if(self.oRDWORKFLOW != nil){
        [aCoder encodeObject:self.oRDWORKFLOW forKey:kBottleOrderModelORDWORKFLOW];
    }
    if(self.tMSDRIVERIDX != nil){
        [aCoder encodeObject:self.tMSDRIVERIDX forKey:kBottleOrderModelTMSDRIVERIDX];
    }
    if(self.tMSDRIVERNAME != nil){
        [aCoder encodeObject:self.tMSDRIVERNAME forKey:kBottleOrderModelTMSDRIVERNAME];
    }
    if(self.tMSDRIVERTEL != nil){
        [aCoder encodeObject:self.tMSDRIVERTEL forKey:kBottleOrderModelTMSDRIVERTEL];
    }
    if(self.tMSFLEETIDX != nil){
        [aCoder encodeObject:self.tMSFLEETIDX forKey:kBottleOrderModelTMSFLEETIDX];
    }
    if(self.tMSFLEETNAME != nil){
        [aCoder encodeObject:self.tMSFLEETNAME forKey:kBottleOrderModelTMSFLEETNAME];
    }
    if(self.tMSPLATENUMBER != nil){
        [aCoder encodeObject:self.tMSPLATENUMBER forKey:kBottleOrderModelTMSPLATENUMBER];
    }
    if(self.tMSVEHICLEIDX != nil){
        [aCoder encodeObject:self.tMSVEHICLEIDX forKey:kBottleOrderModelTMSVEHICLEIDX];
    }
    if(self.tMSVEHICLESIZE != nil){
        [aCoder encodeObject:self.tMSVEHICLESIZE forKey:kBottleOrderModelTMSVEHICLESIZE];
    }
    if(self.tMSVEHICLETYPE != nil){
        [aCoder encodeObject:self.tMSVEHICLETYPE forKey:kBottleOrderModelTMSVEHICLETYPE];
    }
    
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    self.iDX = [aDecoder decodeObjectForKey:kBottleOrderModelIDX];
    self.oRDENTIDX = [aDecoder decodeObjectForKey:kBottleOrderModelORDENTIDX];
    self.oRDFROMADDRESS = [aDecoder decodeObjectForKey:kBottleOrderModelORDFROMADDRESS];
    self.oRDFROMCITY = [aDecoder decodeObjectForKey:kBottleOrderModelORDFROMCITY];
    self.oRDFROMCNAME = [aDecoder decodeObjectForKey:kBottleOrderModelORDFROMCNAME];
    self.oRDFROMCODE = [aDecoder decodeObjectForKey:kBottleOrderModelORDFROMCODE];
    self.oRDFROMCOUNTRY = [aDecoder decodeObjectForKey:kBottleOrderModelORDFROMCOUNTRY];
    self.oRDFROMCSMS = [aDecoder decodeObjectForKey:kBottleOrderModelORDFROMCSMS];
    self.oRDFROMCTEL = [aDecoder decodeObjectForKey:kBottleOrderModelORDFROMCTEL];
    self.oRDFROMNAME = [aDecoder decodeObjectForKey:kBottleOrderModelORDFROMNAME];
    self.oRDFROMPROPERTY = [aDecoder decodeObjectForKey:kBottleOrderModelORDFROMPROPERTY];
    self.oRDFROMPROVINCE = [aDecoder decodeObjectForKey:kBottleOrderModelORDFROMPROVINCE];
    self.oRDFROMREGION = [aDecoder decodeObjectForKey:kBottleOrderModelORDFROMREGION];
    self.oRDFROMSITE = [aDecoder decodeObjectForKey:kBottleOrderModelORDFROMSITE];
    self.oRDFROMZIP = [aDecoder decodeObjectForKey:kBottleOrderModelORDFROMZIP];
    self.oRDGROUPNO = [aDecoder decodeObjectForKey:kBottleOrderModelORDGROUPNO];
    self.oRDISSUEQTY = [aDecoder decodeObjectForKey:kBottleOrderModelORDISSUEQTY];
    self.oRDNO = [aDecoder decodeObjectForKey:kBottleOrderModelORDNO];
    self.oRDNOCLIENT = [aDecoder decodeObjectForKey:kBottleOrderModelORDNOCLIENT];
    self.oRDQTY = [aDecoder decodeObjectForKey:kBottleOrderModelORDQTY];
    self.oRDQTYDELIVERY = [aDecoder decodeObjectForKey:kBottleOrderModelORDQTYDELIVERY];
    self.oRDSTATE = [aDecoder decodeObjectForKey:kBottleOrderModelORDSTATE];
    self.oRDTOADDRESS = [aDecoder decodeObjectForKey:kBottleOrderModelORDTOADDRESS];
    self.oRDTOCITY = [aDecoder decodeObjectForKey:kBottleOrderModelORDTOCITY];
    self.oRDTOCNAME = [aDecoder decodeObjectForKey:kBottleOrderModelORDTOCNAME];
    self.oRDTOCODE = [aDecoder decodeObjectForKey:kBottleOrderModelORDTOCODE];
    self.oRDTOCOUNTRY = [aDecoder decodeObjectForKey:kBottleOrderModelORDTOCOUNTRY];
    self.oRDTOCSMS = [aDecoder decodeObjectForKey:kBottleOrderModelORDTOCSMS];
    self.oRDTOCTEL = [aDecoder decodeObjectForKey:kBottleOrderModelORDTOCTEL];
    self.oRDTOIMAGE = [aDecoder decodeObjectForKey:kBottleOrderModelORDTOIMAGE];
    self.oRDTOIMAGE1 = [aDecoder decodeObjectForKey:kBottleOrderModelORDTOIMAGE1];
    self.oRDTOIMAGE2 = [aDecoder decodeObjectForKey:kBottleOrderModelORDTOIMAGE2];
    self.oRDTONAME = [aDecoder decodeObjectForKey:kBottleOrderModelORDTONAME];
    self.oRDTOPROPERTY = [aDecoder decodeObjectForKey:kBottleOrderModelORDTOPROPERTY];
    self.oRDTOPROVINCE = [aDecoder decodeObjectForKey:kBottleOrderModelORDTOPROVINCE];
    self.oRDTOREGION = [aDecoder decodeObjectForKey:kBottleOrderModelORDTOREGION];
    self.oRDTOSITE = [aDecoder decodeObjectForKey:kBottleOrderModelORDTOSITE];
    self.oRDTOZIP = [aDecoder decodeObjectForKey:kBottleOrderModelORDTOZIP];
    self.oRDWORKFLOW = [aDecoder decodeObjectForKey:kBottleOrderModelORDWORKFLOW];
    self.tMSDRIVERIDX = [aDecoder decodeObjectForKey:kBottleOrderModelTMSDRIVERIDX];
    self.tMSDRIVERNAME = [aDecoder decodeObjectForKey:kBottleOrderModelTMSDRIVERNAME];
    self.tMSDRIVERTEL = [aDecoder decodeObjectForKey:kBottleOrderModelTMSDRIVERTEL];
    self.tMSFLEETIDX = [aDecoder decodeObjectForKey:kBottleOrderModelTMSFLEETIDX];
    self.tMSFLEETNAME = [aDecoder decodeObjectForKey:kBottleOrderModelTMSFLEETNAME];
    self.tMSPLATENUMBER = [aDecoder decodeObjectForKey:kBottleOrderModelTMSPLATENUMBER];
    self.tMSVEHICLEIDX = [aDecoder decodeObjectForKey:kBottleOrderModelTMSVEHICLEIDX];
    self.tMSVEHICLESIZE = [aDecoder decodeObjectForKey:kBottleOrderModelTMSVEHICLESIZE];
    self.tMSVEHICLETYPE = [aDecoder decodeObjectForKey:kBottleOrderModelTMSVEHICLETYPE];
    return self;
    
}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
    BottleOrderModel *copy = [BottleOrderModel new];
    
    copy.iDX = [self.iDX copy];
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
