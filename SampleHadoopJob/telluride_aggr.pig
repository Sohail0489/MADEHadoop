telluride_member = LOAD 'hdfs://heahadn01.hadoop.searshc.com:8020/work/syw_made/Telluride/' using PigStorage('\u0001') AS (
LyltyCardNbr:chararray
,FirstNm:chararray
,LastNm:chararray
,EmailAddr:chararray
,BirthDt:chararray
,GenderCd:chararray
,MobilPhoneNbr:chararray
,ActiveMembership:chararray
,VIPTier:chararray
,Associate:chararray
,EmailOptIn:chararray
,PhoneOptIn:chararray
,EnrolRgstrDt:chararray
,EnrolSrcCd:chararray
,EnrolStrNbr:chararray
,MidNm:chararray
,LangPrefCd:chararray
,Age:chararray
,HomeAddress:chararray
,SywrMbrEarnType:chararray
,FullName:chararray
,CraftmanClubInd:chararray
,KidAdtgMbrInd:chararray
,SywMAXMbrInd:chararray
,OnlineActvINd:chararray
,TripCohort:chararray
,RedeemDesc:chararray
,SywrPtBalAmt:chararray
,SpendToNxtTierLvlAmt:chararray
,VisitCnt:chararray
,ItemCnt:chararray
,TotSpend:chararray
,OnlineLastOrderDate:chararray);

telluride_aggr = FOREACH telluride_member 
{
SYW_Segments = StringConcat(
(CASE WHEN  CraftmanClubInd == 'YES' then 'Craftman Club~' ELSE '' END),
(CASE WHEN  KidAdtgMbrInd == 'YES' then 'Kid Advantage Member~' ELSE '' END),
(CASE WHEN SywMAXMbrInd == 'YES' then 'Syw MAX Member~' ELSE '' END),
(CASE WHEN Associate == 'YES' then 'Associate~' ELSE '' END),
(CASE WHEN VIPTier == 'YES' then 'VIP Tier~' ELSE '' END)
);
 
GENERATE
CONCAT(LyltyCardNbr,'TEL') as Key,
'TEL' as Source,
LyltyCardNbr,
'',
FirstNm,
LastNm,
EmailAddr,
'',
BirthDt,
GenderCd,
'',
'',
LangPrefCd as Language,
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
TripCohort as Tripper_Bucket,
OnlineActvINd,
RedeemDesc,
'',
SywMAXMbrInd,
VIPTier as SYWVIP,
'',
(CASE WHEN (INT)TotSpend< 0 THEN '<0' WHEN (INT)TotSpend>= 0 AND (INT)TotSpend<100 THEN '0-100' WHEN (INT)TotSpend>= 100 AND (INT)TotSpend<200 THEN '100-200' WHEN (INT)TotSpend>= 200 AND (INT)TotSpend<300 THEN '200-300' WHEN (INT)TotSpend>= 300 AND (INT)TotSpend<400 THEN '300-400' WHEN (INT)TotSpend>= 400 AND (INT)TotSpend<500 THEN '400-500' WHEN (INT)TotSpend>= 500 AND (INT)TotSpend<750 THEN '500-750' WHEN (INT)TotSpend>= 750 AND (INT)TotSpend<1000 THEN '750-1000' WHEN (INT)TotSpend>= 1000 AND (INT)TotSpend<2500 THEN '1000-2500' WHEN (INT)TotSpend>2500 THEN '<2500' ELSE '' END) AS SpendBucket,
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
ActiveMembership,
Associate,
EmailOptIn,
PhoneOptIn,
CraftmanClubInd,
KidAdtgMbrInd,
EnrolRgstrDt,
EnrolSrcCd,
EnrolStrNbr,
OnlineLastOrderDate,
MidNm,
SywrMbrEarnType as Bonus,
SywrPtBalAmt as Total_Points_Balance,
SpendToNxtTierLvlAmt,
VisitCnt,
ItemCnt,
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
(case when ENDSWITH(SYW_Segments, '~') then SUBSTRING(SYW_Segments, 0, (int)SIZE(SYW_Segments)-1) ELSE SYW_Segments END) as SYW_Segments,
'',
'',
'',
'',
'',
'',
'',
'',
Age,
HomeAddress,
'',
'',
'',
'',
'',
'',
'',
'',
'';};
