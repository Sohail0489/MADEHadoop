
REGISTER '$MADE_JAR_DIR/Search.jar';

telluride_member = LOAD '$MADE_WORK_DIR/telluride/telluride_transformed' using PigStorage('\u0001') AS (
LyltyCardNbr:chararray
,firstnm :chararray
,lastnm :chararray
,emailaddr :chararray
,birthdt :chararray
,gendercd :chararray
,mobilphonenbr :chararray
,activemembership :chararray
,viptier :chararray
,associate :chararray
,emailoptin :chararray
,phoneoptin :chararray
,enrolrgstrdt :chararray
,enrolsrccd :chararray
,enrolstrnbr :chararray
,midnm :chararray
,langprefcd :chararray
,age :chararray
,homeaddress :chararray
,sywrmbrearntype :chararray
,fullname :chararray
,craftmanclubind :chararray
,kidadtgmbrind :chararray
,sywmaxmbrind :chararray
,onlineactvind :chararray
,tripcohort :chararray
,redeemdesc :chararray
,sywrptbalamt :chararray
,spendtonxttierlvlamt :chararray
,visitcnt :chararray
,itemcnt :chararray
,totspend :chararray
,lastonlineorddt :chararray
,SrsCCUserInd :chararray
,EmailInd :chararray
,birthdayyear:chararray
,birthdaymonth:chararray);

telluride_aggr = FOREACH telluride_member 
GENERATE
CONCAT(LyltyCardNbr,'TEL') as Key,
'TEL' as Source,
LyltyCardNbr,
'',
'',
org.sears.analytics.SearchUTC(org.sears.analytics.ValidateDate(birthdt)) as birthdt,
gendercd ,
'',
'',
langprefcd as Language,
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',

'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',


'',
'',
'',

'',
'',
'',
'',
'',
'',

'',

'',
'',


'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',


'',
'',
'',
'',
'',
'',


'',
'',
'',
'',
'',


'',
'',
'',
'',
'',
'',
'',
'',


'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
tripcohort,
onlineactvind ,
redeemdesc,
SrsCCUserInd ,
sywmaxmbrind ,
viptier ,
EmailInd,
totspend ,
REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE((birthdt is not null?SUBSTRING(org.sears.analytics.SearchUTC(org.sears.analytics.ValidateDate(birthdt)),5,7):''),'01','1'),'02','2'),'03','3'),'04','4'),'05','5'),'06','6'),'07','7'),'08','8'),'09','9'),
(birthdt is not null?SUBSTRING(org.sears.analytics.SearchUTC(org.sears.analytics.ValidateDate(birthdt)),0,4):''),
'',
'',
'',
'',
'',
'',

activemembership ,
associate ,

phoneoptin ,
craftmanclubind ,
kidadtgmbrind,
org.sears.analytics.SearchUTC(org.sears.analytics.ValidateDate(enrolrgstrdt)) as enrolrgstrdt,
enrolsrccd ,
enrolstrnbr ,

'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',

'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',

'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',


'',
'',
age,
'',
'',
'',
'',
'',
'',
'',

'',
'',

'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'N',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'';
STORE telluride_aggr INTO '$MADE_WORK_DIR/telluride/tellurideaggcollection' using  PigStorage('\t');