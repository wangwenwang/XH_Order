//
//  BottleOrderModel.h
//  Order
//
//  Created by 凯东源 on 2017/11/24.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BottleOrderModel : NSObject

@property (nonatomic, strong) NSString * iDX;
@property (nonatomic, strong) NSString * oRDENTIDX;
@property (nonatomic, strong) NSString * oRDFROMADDRESS;
@property (nonatomic, strong) NSString * oRDFROMCITY;
@property (nonatomic, strong) NSString * oRDFROMCNAME;
@property (nonatomic, strong) NSString * oRDFROMCODE;
@property (nonatomic, strong) NSString * oRDFROMCOUNTRY;
@property (nonatomic, strong) NSString * oRDFROMCSMS;
@property (nonatomic, strong) NSString * oRDFROMCTEL;
@property (nonatomic, strong) NSString * oRDFROMNAME;
@property (nonatomic, strong) NSString * oRDFROMPROPERTY;
@property (nonatomic, strong) NSString * oRDFROMPROVINCE;
@property (nonatomic, strong) NSString * oRDFROMREGION;
@property (nonatomic, strong) NSString * oRDFROMSITE;
@property (nonatomic, strong) NSString * oRDFROMZIP;
@property (nonatomic, strong) NSString * oRDGROUPNO;
@property (nonatomic, strong) NSString * oRDISSUEQTY;
@property (nonatomic, strong) NSString * oRDNO;
@property (nonatomic, strong) NSString * oRDNOCLIENT;
@property (nonatomic, strong) NSString * oRDQTY;
@property (nonatomic, strong) NSString * oRDQTYDELIVERY;
@property (nonatomic, strong) NSString * oRDSTATE;
@property (nonatomic, strong) NSString * oRDTOADDRESS;
@property (nonatomic, strong) NSString * oRDTOCITY;
@property (nonatomic, strong) NSString * oRDTOCNAME;
@property (nonatomic, strong) NSString * oRDTOCODE;
@property (nonatomic, strong) NSString * oRDTOCOUNTRY;
@property (nonatomic, strong) NSString * oRDTOCSMS;
@property (nonatomic, strong) NSString * oRDTOCTEL;
@property (nonatomic, strong) NSString * oRDTOIMAGE;
@property (nonatomic, strong) NSString * oRDTOIMAGE1;
@property (nonatomic, strong) NSString * oRDTOIMAGE2;
@property (nonatomic, strong) NSString * oRDTONAME;
@property (nonatomic, strong) NSString * oRDTOPROPERTY;
@property (nonatomic, strong) NSString * oRDTOPROVINCE;
@property (nonatomic, strong) NSString * oRDTOREGION;
@property (nonatomic, strong) NSString * oRDTOSITE;
@property (nonatomic, strong) NSString * oRDTOZIP;
@property (nonatomic, strong) NSString * oRDWORKFLOW;
@property (nonatomic, strong) NSString * tMSDRIVERIDX;
@property (nonatomic, strong) NSString * tMSDRIVERNAME;
@property (nonatomic, strong) NSString * tMSDRIVERTEL;
@property (nonatomic, strong) NSString * tMSFLEETIDX;
@property (nonatomic, strong) NSString * tMSFLEETNAME;
@property (nonatomic, strong) NSString * tMSPLATENUMBER;
@property (nonatomic, strong) NSString * tMSVEHICLEIDX;
@property (nonatomic, strong) NSString * tMSVEHICLESIZE;
@property (nonatomic, strong) NSString * tMSVEHICLETYPE;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

@end
