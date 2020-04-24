-- Create indexes & foreign keys

ALTER TABLE NURSERY_ANALYSIS
ADD CONSTRAINT fk_fac
FOREIGN KEY (FACILITY_ID)
REFERENCES FACILITY(FACILITY_ID);

ALTER TABLE NURSERY_ANALYSIS
ADD CONSTRAINT fk_clim
FOREIGN KEY (CLIMATE_ID)
REFERENCES CLIMATE(CLIMATE_ID);

ALTER TABLE NURSERY_ANALYSIS
ADD CONSTRAINT fk_chem
FOREIGN KEY (CHEMICAL_ID)
REFERENCES CHEMICAL(CHEMICAL_ID);

ALTER TABLE NURSERY_ANALYSIS
ADD CONSTRAINT fk_loc
FOREIGN KEY (LOCATION_ID)
REFERENCES LOCATION(LOCATION_ID);