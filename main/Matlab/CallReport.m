clearvars; close all; clc;

%% Settings
% 1=VFL 2=Hockey 3=EHF 4=HoNaMa 5=API_HoNaMa 6=API_Dana 7=API_DanaU21 8=API_eagle
% 5=Home_Hona 15=Home_Dana
ProfileId=5;
loadSettings()

mode=2;         % 1: Game , 2: Training

Ref=S.Profile(ProfileId).Ref(2);

allNames=getAnalyzedSessions(P.Rootfolder);

%% pick Session
pick=316:318;
allNames=allNames(pick);
Session=1;

%% Create Reports

for Session=1:numel(allNames)
    
    cd(P.DB)
    Datafile=char(allNames(Session));
    Struct=load(Datafile);
    cd(baseF)
    
    CreateReport(Struct,S.VarNames,Ref,P.Rootfolder,mode);
       
    fprintf('%d ', Session);
end