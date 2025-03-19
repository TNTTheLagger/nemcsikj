type     cim=record
           varos,
           utca:string[20];
           irsz:string[4];
           telefon:string[10];
         end;
     nevek=record
             case nem:nemek of
               fiu:(nev1:string[15]);
               lany:(nev2,
                     nev3:string[15]);
           end;
     resztvevo=record
       jelen:boolean;
       nev:nevek;
       cim_lakas,
       cim_munkahely:cim;
       vegzett:integer;
     end;
const iskola:cim=(varos:'Miskolc';
           utca:'H“s”k tere 7';
           irsz:'3525';
           telefon:'06-46-349853');
