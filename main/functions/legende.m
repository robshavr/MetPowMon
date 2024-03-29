function [Legende]=legende()
import mlreportgen.report.*
import mlreportgen.dom.*
    Legende=Section();
    Legende.Numbered=0;
    Legende.Title=Paragraph('Legende');
        text1=Paragraph('MP (Metabolic Power) [W/kg] o. [J/kg/s]:','Lgnd');
        text2=Paragraph(['Die Metabolic Power beschreibt den aktuellen' ...
            ' Energiebedarf pro Zeiteinheit normiert auf das K�rpergewicht' ...
            ' anhand der Messdaten (Distanz, Geschwindigkeit, Beschleunigung).' ...
            ' Der durchschnittliche Wert der Einheit beschreibt somit die' ...
            ' Intensit�t im gegebenen Zeitraum.']);
        text3=Paragraph('VO2 (Sauerstoffaufnahme bzw. aerobe Energie) [W/kg] o. [ml/min/kg]:','Lgnd');
        text4=Paragraph(['Die Sauerstoffaufnahme wird anhand der MP modelliert.' ...
            ' W�hrend die MP den aktuellen (metabolischen) Energiebedarf darstellt,'...
            ' stellt die VO2 den Anteil der aerob verstoffwechselten Energie dar.'...
            ' Sie passt sich "tr�ge" der MP an. Daher kann sie ebenfalls in der'...
            ' Einheit [J/kg/s]  o. [W/kg/s] angegeben werden. Unter der'...
            ' Annahme eines festgew�hlten Verh�ltnis der Verstoffwechselung'...
            ' von Fetten und Kohlenhydraten (hier: 13/87% - RQ = 0,96)'...
            ' kann auf die origin�re Einheit [ml/min/kg] Sauerstoff'...
            ' umgerechnet werden.']);
        text5=Paragraph('EDI (Equivalent Distance Index) [%]: ','Lgnd');
        text6=Paragraph(['Der EDI beschreibt das Verh�ltnis von Gesamtdistanz zur' ...
            ' ED (Equivalent Distance), der Distanz, die mit konstanter' ...
            ' Laufgeschwindigkeit im gegebenen Zeitraum h�tte absolviert' ...
            ' werden k�nnen. Der EDI ist somit ein Faktor der Aufschluss' ...
            ' �ber den Intervall-Charakter � je h�her, desto' ...
            ' �intermittierender".']);
        text7=Paragraph('Anaerober Index (AI) [%]: ','Lgnd');
        text8=Paragraph(['Der anaerobe Index ist das Verh�ltnis von Energie,' ...
            ' die �ber- und unterhalb der individuellen MP4 (Metabolic Power' ...
            ' Schwelle bei 4mmol/L Laktat) umgesetzt wurde. Je h�her der Index,' ...
            ' desto mehr Energie muss in intensiven Phasen zun�chst �ber ' ...
            'anaerobe Energiesysteme gepuffert / bereitgestellt werden.']);
        text9=Paragraph('HI Events (Hochintensive Aktionen): ','Lgnd');
        text10=Paragraph(['Die hochintensiven Aktionen (z.B. Sprints) werden ' ...
            'anhand eines Schwellenwertes (MP=55W/kg), ' ...
            'einer Mindestdauer (0,6s) und einer minimalen Dauer zwischen ' ...
            'zwei Aktionen (0,2s) berechnet.']);
        text11=Paragraph('Distanz & Energie an-/aerob: ','Lgnd');
        text12=Paragraph(['Beschreibt die Distanz/Energie, die w�hrend hoher ' ...
            'und niedriger MP-Phasen (Schwelle=MP4) zur�ckgelegte / ' ...
            'umgesetzte Distanz/Energie.']);
text=([text1 text2 text3 text4 text5 text6 text7 text8 text9 text10 text11 text12]);
     add(Legende,text);
end
