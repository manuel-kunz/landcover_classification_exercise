# AppEEARS Point Sample Extraction Readme  

## Table of Contents  

1. Request Parameters  
2. Request File Listing  
3. Point Sample Extraction Process  
4. Data Quality  
    4.1. Moderate Resolution Imaging Spectroradiometer (MODIS)  
    4.2. NASA MEaSUREs Shuttle Radar Topography Mission (SRTM) Version 3 (v3)  
    4.3. Gridded Population of the World (GPW) Version 4 Revision 11 (v4.11)  
    4.4. Suomi National Polar-orbiting Partnership (S-NPP) NASA Visible Infrared Imaging Radiometer Suite (VIIRS)  
    4.5. Soil Moisture Active Passive (SMAP)  
    4.6. Daymet (v4R1)
    4.7.1. Ecosystem Spaceborne Thermal Radiometer Experiment on Space Station (ECOSTRESS) Swath V1 and V2  
    4.7.2. Ecosystem Spaceborne Thermal Radiometer Experiment on Space Station (ECOSTRESS) Tiled V2
    4.8. Advanced Spaceborne Thermal Emission and Reflection Radiometer (ASTER) Global Digital Elevation Model (GDEM) Version 3 (v3) and Global Water Bodies Database (WBD) Version 1 (v1)  
    4.9. NASA MEaSUREs NASA Digital Elevation Model (DEM) Version 1 (v1)  
    4.10. Harmonized Landsat Sentinel-2 (HLS) Version 2.0
    4.11. Landsat Collection 2 (C2) U.S. Analysis Ready Data (ARD)  
    4.12. US National Park Service (NPS) Historical Water Balance for the Continental United States (CONUS)
5. Data Caveats  
6. Documentation  
7. Sample Request Retention  
8. Data Product Citations  
9. Software Citation  
10. Feedback  

## 1. Request Parameters  

    Name: nbar_lc_2  

    Date Completed:** 2023-12-21T11:13:03.988417  

    ID: cd04cd89-990c-45cf-982e-69f148041c6a  

    Details:  

        Start Date: 01-01-2012  

        End Date: 12-31-2012
    
        Layers:  

            Nadir_Reflectance_Band1 (MCD43A4.061)  
            Nadir_Reflectance_Band2 (MCD43A4.061)  
            Nadir_Reflectance_Band3 (MCD43A4.061)  
            Nadir_Reflectance_Band4 (MCD43A4.061)  
    
        Coordinates:  

            1, 43931, 63.2125, 177.7958  
            2, 34904, 12.5042, 122.0208  
            3, 21060, 6.1458, 42.1292  
            4, 1150, 53.2208, -71.2625  
            5, 16494, 12.4542, -85.7958  
            6, 14560, 54.9042, 81.5542  
            7, 16329, 55.3625, 63.5708  
            8, 901, 7.6792, 25.1458  
            9, 39458, 0.7792, 39.0792  
            10, 21990, 7.3292, 25.2292  
            11, 10266, 10.0208, 12.7458  
            12, 15563, 6.0625, 40.9875  
            13, 18556, 43.1042, 54.9542  
            14, 7694, 38.2458, 67.3625  
            15, 39092, 3.9875, 45.4792  
            16, 14425, 50.0042, 80.9875  
            17, 2043, 55.3625, -77.3292  
            18, 1766, 8.9708, 28.1125  
            19, 6141, 10.4542, 9.3542  
            20, 37165, 18.9958, 95.8125  
            21, 2088, 10.4875, -1.9625  
            22, 31698, 67.8708, -69.0042  
            23, 14446, 12.6375, -14.3542  
            24, 24702, 37.0708, -109.3458  
            25, 17881, 13.9708, 43.6625  
            26, 23656, 14.9792, 39.2625  
            27, 37376, 22.1542, 92.3292  
            28, 941, 7.8292, -2.3708  
            29, 3436, 67.3375, -84.8792  
            30, 27519, 0.4042, 35.9125  
            31, 3455, 20.6042, -104.3292  
            32, 11156, 7.8708, 23.0958  
            33, 6109, 59.9875, -148.6625  
            34, 36177, 22.6875, 109.4792  
            35, 22350, 46.1042, 79.0542  
            36, 1657, 10.2708, 19.0125  
            37, 20530, 10.8792, 32.4458  
            38, 18689, 3.6125, 37.5042  
            39, 5204, 7.6042, 24.5292  
            40, 37356, 33.8125, 96.1625  
            41, 20337, 66.8625, 52.3292  
            42, 11142, 70.4875, 132.3375  
            43, 13460, 11.8958, 1.0208  
            44, 27826, 40.3292, -119.8958  
            45, 18990, 6.4208, 37.5125  
            46, 27357, 12.3458, -3.8458  
            47, 5047, 8.5542, 17.2625  
            48, 42580, 12.3625, -11.9042  
            49, 33235, 67.9292, -152.8792  
            50, 38122, 31.0458, 81.8375  
            51, 18871, 40.7542, -115.6958  
            52, 16133, 8.8042, -67.0042  
            53, 33057, 59.8625, -151.5125  
            54, 13519, 64.8458, 99.6875  
            55, 21421, 8.8375, 23.3208  
            56, 17533, 4.7708, 42.8542  
            57, 42017, 9.8208, 5.7292  
            58, 22536, 27.0292, -112.8042  
            59, 25798, 25.9292, -100.7958  
            60, 1602, 54.2208, -75.2625  
            61, 1575, 8.6792, -2.7542  
            62, 14566, 50.1125, 79.0375  
            63, 3062, 50.2958, -92.1375  
            64, 16147, 13.3125, -13.7708  
            65, 11251, 12.0292, -13.1292  
            66, 32007, 24.9875, -99.9542  
            67, 5530, 21.5792, 73.8375  
            68, 10923, 6.4208, 24.3458  
            69, 32247, 41.4375, -105.3208  
            70, 1699, 65.9542, -67.7792  
            71, 23441, 63.8542, 34.8208  
            72, 14362, 68.2708, 93.9208  
            73, 14737, 34.2375, 72.9208  
            74, 1265, 52.3542, -72.6125  
            75, 42411, 6.6458, -8.9208  
            76, 3514, 22.1375, -104.6042  
            77, 15605, 4.1292, 38.7708  
            78, 10863, 44.5875, 117.9792  
            79, 1554, 9.8042, -85.1958  
            80, 5054, 59.4792, -111.3375  
            81, 26025, 11.7292, -1.6708  
            82, 21434, 70.5958, 55.1375  
            83, 26929, 12.1375, -7.5375  
            84, 32320, 34.1292, -110.2708  
            85, 4149, 27.5542, -110.4875  
            86, 11299, 6.1708, 39.8792  
            87, 26496, 61.2792, 9.3792  
            88, 3643, 21.6542, -106.5458  
            89, 34289, 59.9708, 153.8292  
            90, 2157, 7.9625, 12.6542  
            91, 21869, 53.9125, 38.0125  
            92, 41209, 8.0708, 15.8458  
            93, 19843, 10.3542, 34.5625  
            94, 20998, 10.4542, 30.4375  
            95, 17247, 0.3542, 42.8125  
            96, 3629, 36.4875, -102.8708  
            97, 16512, 43.3458, 73.7042  
            98, 16351, 7.7292, -69.5042  
            99, 12208, 4.8708, 97.7458  
            100, 25337, 7.2292, 44.2958  
            101, 687, 51.7542, 93.8875  
            102, 25503, 42.4458, 9.0375  
            103, 17555, 0.3792, 41.8125  
            104, 39467, 34.9458, -2.8208  
            105, 15535, 58.3042, 71.6958  
            106, 23466, 25.0458, -103.5708  
            107, 15078, 3.5792, 32.5958  
            108, 16335, 5.9875, 16.5958  
            109, 5395, 7.7375, -66.1792  
            110, 790, 11.5708, -7.5125  
            111, 17846, 35.6375, 49.1042  
            112, 10505, 50.7292, -121.1625  
            113, 15170, 59.2875, 78.5792  
            114, 6140, 58.2208, -151.9958  
            115, 7802, 4.8542, 37.7708  
            116, 13156, 59.4792, 99.4542  
            117, 23312, 40.1542, 25.7792  
            118, 34885, 33.3292, 126.5125  
            119, 36536, 28.6792, 104.8708  
            120, 18526, 50.7208, 49.7375  
            121, 32430, 31.4458, -115.8875  
            122, 27692, 55.5208, 79.7542  
            123, 2227, 7.1625, 8.7542  
            124, 4275, 40.7292, -109.5542  
            125, 29589, 16.8292, -11.9125  
            126, 21992, 7.4625, 24.3708  
            127, 15504, 69.9958, 82.8125  
            128, 29190, 39.8708, -106.0042  
            129, 39275, 71.4125, 71.6042  
            130, 39402, 32.6125, 46.0792  
            131, 7862, 9.5125, 22.0958  
            132, 23810, 10.7208, 14.7375  
            133, 26797, 39.7958, -1.5458  
            134, 17489, 59.8625, 40.2625  
            135, 20647, 35.6125, 3.9458  
            136, 40124, 6.9458, 29.9208  
            137, 17527, 6.0625, -3.2125  
            138, 3148, 9.4958, -74.8042  
            139, 11046, 6.0458, 26.3792  
            140, 5693, 58.5542, -126.5625  
            141, 19681, 59.1125, 48.9125  
            142, 41598, 8.9875, 10.9625  
            143, 32467, 43.5125, -114.6875  
            144, 25010, 35.6792, 9.6958  
            145, 41456, 5.8875, 12.5542  
            146, 13337, 22.5292, 85.0542  
            147, 12906, 50.0292, 98.0708  
            148, 19840, 11.6375, 35.4875  
    
    Version: This request was processed by AppEEARS version 3.40.2  

## 2. Request File Listing  

- Comma-separated values file with data extracted for a specific product
  - nbar-lc-2-MCD43A4-061-results.csv
- Text file with data pool URLs for all source granules used in the extraction
  - nbar-lc-2-granule-list.txt
- JSON request file which can be used in AppEEARS to create a new request
  - nbar-lc-2-request.json
- xml file
  - nbar-lc-2-MCD43A4-061-metadata.xml  

## 3. Point Sample Extraction Process  

Datasets available in AppEEARS are served via OPeNDAP (Open-source Project for a Network Data Access Protocol) services. OPeNDAP services allow users to concisely pull pixel values from datasets via HTTPS requests. A middleware layer has been developed to interact with the OPeNDAP services. The middleware make it possible to extract scaled data values, with associated information, for pixels corresponding to a given coordinate and date range.

**NOTE:**  

- Requested date ranges may not match the reference date for multi-day products. AppEEARS takes an inclusive approach when extracting data for sample requests, often returning data that extends beyond the requested date range. This approach ensures that the returned data includes records for the entire requested date range.  
- For multi-day (8-day, 16-day, Monthly, Yearly) MODIS and S-NPP NASA VIIRS datasets, the date field in the data tables reflects the first day of the composite period.  
- If selected, the SRTM v3, ASTER GDEM v3 and Global Water Bodies Database v1, and NASADEM v1 product will be extracted regardless of the time period specified in AppEEARS because it is a static dataset. The date field in the data tables reflects the nominal SRTM date of February 11, 2000.  
- If the visualizations indicate that there are no data to display, proceed to downloading the .csv output file. Data products that have both categorical and continuous data values (e.g. MOD15A2H) are not able to be displayed within the visualizations within AppEEARS.  

## 4. Data Quality  

When available, AppEEARS extracts and returns quality assurance (QA) data for each data file returned regardless of whether the user requests it. This is done to ensure that the user possesses the information needed to determine the usability and usefulness of the data they get from AppEEARS. Most data products available through AppEEARS have an associated QA data layer. Some products have more than one QA data layer to consult. See below for more information regarding data collections/products and their associated QA data layers.  

### 4.1. MODIS (Terra, Aqua, & Combined)

All MODIS land products, as well as the MODIS Snow Cover Daily product, include quality assurance (QA) information designed to help users understand and make best use of the data that comprise each product. Results downloaded from AppEEARS and/or data directly requested via middleware services contain not only the requested pixel/data values but also the decoded QA information associated with each pixel/data value extracted.  

- See the MODIS Land Products QA Tutorials: <https://lpdaac.usgs.gov/resources/e-learning/> for more QA information regarding each MODIS land product suite.  
- See the MODIS Snow Cover Daily product user guide for information regarding QA utilization and interpretation.  

### 4.2. NASA MEaSUREs SRTM v3 (30m & 90m)  

SRTM v3 products are accompanied by an ancillary "NUM" file in place of the QA/QC files. The "NUM" files indicate the source of each SRTM pixel, as well as the number of input data scenes used to generate the SRTM v3 data for that pixel.  

- See the user guide: <https://lpdaac.usgs.gov/documents/179/SRTM_User_Guide_V3.pdf> for additional information regarding the SRTM "NUM" file.  

### 4.3. GPW v4.11  

The GPW `Population Count`, `Population Density`, and `Basic Demographic Characteristics` data layers are accompanied by `Data Quality Indicators` datasets. The `Data Quality Indicators` were created to provide context for the population count and density grids, and to provide explicit information on the spatial precision of the input boundary data. The data context grid (data-context1) explains pixels with "0" population estimate in the population count and density grids, based on information included in the census documents. The mean administrative unit area grid (mean-admin-area2) measures the mean input unit size in square kilometers. It provides a quantitative surface that indicates the size of the input unit(s) from which the population count and density grids were created.  

### 4.4. S-NPP NASA VIIRS  

All S-NPP NASA VIIRS land products include quality information designed to help users understand and make best use of the data that comprise each product. For product-specific information, see the link to the S-NPP VIIRS products table provided in section 5.  

**NOTE:**  

- The S-NPP NASA VIIRS Surface Reflectance data products VNP09A1 and VNP09H1 contain two quality layers: `SurfReflect_State` and `SurfReflect_QC`. Both quality layers are provided to the user with the request results. Due to changes implemented on August 21, 2017 for forward processed data, there are differences in values for the `SurfReflect_QC` layer in VNP09A1 and `SurfReflect_QC_500` in VNP09H1.  
- Refer to the S-NPP NASA VIIRS Surface Reflectance User's Guide Version 1.1: <https://lpdaac.usgs.gov/documents/123/VNP09_User_Guide_V1.1.pdf> for information on how to decode the `SurfReflect_QC` quality layer for data processed before August 21, 2017. For data processed on or after August 21, 2017, refer to the S-NPP NASA VIIRS Surface Reflectance User's guide Version 1.6: <https://lpdaac.usgs.gov/documents/124/VNP09_User_Guide_V1.6.pdf>  

### 4.5. SMAP  

SMAP products provide multiple means to assess quality. Each data product contains bit flags, uncertainty measures, and file-level metadata that provide quality information. Results downloaded from AppEEARS and/or data directly requested via middleware services contain not only the requested pixel/data values, but also the decoded bit flag information associated with each pixel/data value extracted. For additional information regarding the specific bit flags, uncertainty measures, and file-level metadata contained in this product, refer to the Quality Assessment section of the user guide for the specific SMAP data product in your request: <https://nsidc.org/data/smap/smap-data.html>  

### 4.6. Daymet v4R1

Daymet station-level daily weather observation data and the corresponding Daymet model predicted data for three Daymet model parameters: minimum temperature (tmin), maximum temperature (tmax), and daily total precipitation (prcp) are available. These data provide information into the regional accuracy of the Daymet model for the three station-level input parameters. Corresponding comma separated value (.csv) files that contain metadata for every surface weather station for the variable-year combinations are also available. <https://doi.org/10.3334/ORNLDAAC/2129>

### 4.7.1. ECOSTRESS Swath V1 and V2  

V1: Quality information varies by product for the ECOSTRESS product suite. Quality information for ECO2LSTE.001, including the bit definition index for the quality layer, is provided in section 2.4 of the User Guide: <https://lpdaac.usgs.gov/documents/423/ECO2_User_Guide_V1.pdf>. Results downloaded from AppEEARS contain the requested pixel/data values and also the decoded QA information associated with each pixel/data value extracted. No quality flags are produced for the ECO3ETPTJPL.001, ECO4WUE.001, or ECO4ESIPTJPL.001 products. Instead, the quality flags of the source data are available in the ECO3ANCQA.001 data product and a cloud mask is available in the ECO2CLD.001 product. The `ETinst` layer in the ECO3ETPTJPL.001 product does include an associated uncertainty layer that is provided with each request for ‘ETinst’ in AppEEARS. Each radiance layer in the ECO1BMAPRAD.001 product has a linked quality layer (Data Quality Indicators). ECO2CLD.001 and ECO3ANCQA.001 are separate quality products that are also available for download in AppEEARS.  

V2: Quality information varies by product for the ECOSTRESS product suite. Quality information for ECO_L2_LSTE.002, including the bit definition index for the quality layer, is provided in section 2.4 of the User Guide: <https://lpdaac.usgs.gov/documents/423/ECO2_User_Guide_V2.pdf>. Results downloaded from AppEEARS contain requested pixel/data values and decoded QA information associated with each pixel/data value extracted. For each Land Surface Temperature and Emissivity product, the quality flags of the source data are available in the ECO_L2_LSTE.002 data product and a cloud mask is available in the ECO_L2_CLOUD.002 product.

### 4.7.2. ECOSTRESS Tiled V2  

Quality information varies by product for the ECOSTRESS product suite. Quality information for ECO_L2T_LSTE.002, including the bit definition index for the quality layer, is provided in section 2.4 of the User Guide: <https://lpdaac.usgs.gov/documents/423/ECO2_User_Guide_V2.pdf>. Results downloaded from AppEEARS contain requested pixel/data values and decoded QA information associated with each pixel/data value extracted. For each Land Surface Temperature and Emissivity product, the quality flags of the source data are available as a separate science dataset (SDS) layer in the ECO_L2T_LSTE.002 collection, and a separate cloud and water mask layers are also included.  

### 4.8. ASTER GDEM v3 and Global Water Bodies Database v1  

ASTER GDEM v3 data are accompanied by an ancillary "NUM" file in place of the QA/QC files. The "NUM" files refer to the count of ASTER Level-1A scenes that were processed for each pixel or the source of reference data used to replace anomalies. The ASTER Global Water Bodies Database v1 products do not contain QA/QC files.  

- See Section 7 of the ASTER GDEM user guide: <https://lpdaac.usgs.gov/documents/434/ASTGTM_User_Guide_V3.pdf> for additional information regarding the GDEM "NUM" file.  
- See Section 7 of the ASTER Global Water Bodies Database user guide: <https://lpdaac.usgs.gov/documents/436/ASTWBD_User_Guide_V1.pdf> for a comparison with the SRTM Water Body Dataset.  

### 4.9. NASA MEaSUREs NASADEM v1 (30m)  

NASADEM v1 products are accompanied by an ancillary "NUM" file in place of the QA/QC files. The "NUM" files indicate the source of each NASADEM pixel, as well as the number of input data scenes used to generate the NASADEM v1 data for that pixel.  

- See the NASADEM user guide: <https://lpdaac.usgs.gov/documents/592/NASADEM_User_Guide_V1.pdf> for additional information regarding the NASADEM "NUM" file.  

### 4.10. HLS v2.0  

HLS v2.0 Operational Land Imager (OLI) Surface Reflectance and TOA Brightness Daily Global 30m (HLSL30 v002) and Sentinel-2 Multi-spectral Instrument (MSI) Surface Reflectance Daily Global 30m (HLSS30 v002) products have a quality assessment layer enabling per-pixel masking of cloud, cloud shadow, snow, water, and aerosol optical thickness levels. Quality information for HLSL30 v002 and HLSS30 v002 products, including bit definitions for the quality layer can be found in section 6.4 of the User Guide: <https://lpdaac.usgs.gov/documents/1326/HLS_User_Guide_V2.pdf>.  

### 4.11. Landsat Collection 2 ARD

Landsat C2 U.S. Analysis Ready Data (ARD) products are available for conterminous United States (CONUS)(1982-Present), Alaska (1984-present), and Hawaii (1989-1993, 1999-present). These data are products of Landsat 8/9 Operational Land Imager 2 (OLI-2) / Thermal Infrared Sensor 2 (TIRS-2), Landsat 7 Enhanced Thematic Mapper Plus (ETM+) and Landsat 4-5 Thematic Mapper (TM). The ARD significantly reduces the magnitude of data processing for application scientists. These data contain a quality assessment derived from Fmask version 3.3.1, Aerosol and Cloud QA derived from atmospheric compensation algorithms, and radiometric saturation QA derived from detector's input signal level. More details can be found in the Landsat Collection 2 U.S. ARD DFCB: <https://d9-wret.s3.us-west-2.amazonaws.com/assets/palladium/production/s3fs-public/media/files/LSDS-1435%20Landsat%20C2%20US%20ARD%20Data%20Format%20Control%20Book-v3.pdf>

### 4.11. US NPS Water Balance  

The US NPS Historical Water Balance products do not have associated QA files or layers.

## 5. Data Caveats  

### 5.1.1. ECOSTRESS Swath V1 and V2

- ECOSTRESS Swath data products are natively stored in swath format. To fulfill AppEEARS requests for ECOSTRESS Swath products, the data are first resampled from the native swath format to a georeferenced output. This requires the use of the requested ECOSTRESS product files and the corresponding ECO1BGEO: <https://doi.org/10.5067/ECOSTRESS/ECO1BGEO.001> files for all ECOSTRESS Swath products. To do this conversion, an index array and distance array are created, then the nearest area pixel is located. Next, the Euclidean distance to that area pixel plus all surrounding pixels is measured within a 210 meter search radius (+/- a 3 pixels). This results in 49 pixels measured for every swath pixel. If the distance measured is less than what's currently present in any distance array, then the new distance as well as the swath index value are recorded into the index array used to convert to an area output.

### 5.1.2. ECOSTRESS Tiled V2

- It is not uncommon for many .csv cells returned to contain NaN values. If any layer requested or the QC layer contains valid data, the remaining requested layers will be returned even if only NaN values are present.

### 5.2. S-NPP VIIRS Land Surface Phenology Product (VNP22Q2.001)

- A subset of the science datasets/variables for VNP22Q2.001 are returned in their raw, unscaled form. That is, these variables are returned without having their scale factor and offset applied. AppEEARS visualizations and output summary files are derived using the raw data value, and consequently do not characterize the intended information ("day of year") for the impacted variables. The variables returned in this state include:  

    1. Date_Mid_Greenup_Phase (Cycle 1 and Cycle 2)  
    2. Date_Mid_Senescence_Phase (Cycle 1 and Cycle 2)  
    3. Onset_Greenness_Increase (Cycle 1 and Cycle 2)  
    4. Onset_Greenness_Decrease (Cycle 1 and Cycle 2)  
    5. Onset_Greenness_Maximum (Cycle 1 and Cycle 2)  
    6. Onset_Greenness_Minimum (Cycle 1 and Cycle 2)  

- To convert the raw data to "day of year" (doy) for the above variables, use the following equation:  

      doy = Raw_Data_Value * 1 – (Given_Year - 2000) * 366

### 5.3. SMAP Enhanced L3 Radiometer Global and Polar Grid Daily 9 km EASE-Grid Soil Moisture (SPL3SMP_E) Version 5

- The Version 5 release of SPL3SMP_E includes additional layers for AM and PM north-polar grid soil moisture retrievals. These additional layers are not supported in AppEEARS.

### 5.4. HLS v2.0

- When requesting HLS timeseries, note that Sentinel-2 launched after Landsat was already active. Landsat OLI (HLSL30 v002) products are available from 2013-04-11 to present, while Sentinel-2 MSI products (HLSS30 v002) are available from  2015-11-30 to present.
- Point requests are returned in geographic coordinates.  
- Extra granules may appear in the granule list output file if the target point is close to an area where MGRS tiles overlap.  

## 5.5 GPW v4.11  

- AppEEARS only provides access to GPW v4.11 Basic Demographic Characteristics estimates of population counts by age and sex for the year 2010. Estimates of population density by age and sex are not returned.  

## 5.6. 6.6 GEOLST4KHR v002

- The NASA Making Earth System Data Records for Use in Research Environments (MEaSUREs) GEOLST4KHR version 2 data product are natively stored in swath format. Similar to ECOSTRESS Swath data, GEOLST4KHR data are first resampled from the native swath format to a georectified output. This nearest-neighbor resampling process will result in accuracy lost. To do this conversion, an index array and distance array are created, then the nearest area pixel is located. Next, the spherical distance to that area pixel plus all surrounding pixels is measured within a 12 kilometer search radius (+/- 3 to 21 pixels). The pixel search radius is dynamic based on current swath observation latitude. If the distance measured is less than what's currently present in any distance array, then the new distance as well as the swath index value are recorded into the index array used to convert to an area output.

- GEOLST4KHR version 2 data product does not have any associated quality layer.

## 6. Documentation  

Documentation for data products available through AppEEARS are listed below.  

### 6.1. MODIS Land Products(Terra, Aqua, & Combined)  

- <https://lpdaac.usgs.gov/product_search/?collections=Combined+MODIS&collections=Terra+MODIS&collections=Aqua+MODIS&view=list>  

### 6.2. MODIS Snow Products (Terra and Aqua)  

- <https://nsidc.org/data/modis/data_summaries>  

### 6.3. NASA MEaSUREs SRTM v3  

- <https://lpdaac.usgs.gov/product_search/?collections=MEaSUREs+SRTM&view=list>  

### 6.4. GPW v4.11  

- <https://sedac.ciesin.columbia.edu/data/collection/gpw-v4>  
- <https://sedac.ciesin.columbia.edu/binaries/web/sedac/collections/gpw-v4/gpw-v4-documentation-rev11.pdf>  

### 6.5. S-NPP NASA VIIRS Land Products  

- <https://lpdaac.usgs.gov/product_search/?collections=S-NPP+VIIRS&view=list>  

### 6.6. SMAP Products  

- <http://nsidc.org/data/smap/smap-data.html>  

### 6.7. Daymet v4R1

- <https://doi.org/10.3334/ORNLDAAC/2129>
- <https://daymet.ornl.gov/>

### 6.8. ECOSTRESS  

- <https://lpdaac.usgs.gov/product_search/?collections=ECOSTRESS&view=list>  

### 6.9. ASTER GDEM v3 and Global Water Bodies Database v1  

- <https://doi.org/10.5067/ASTER/ASTGTM.003>  
- <https://doi.org/10.5067/ASTER/ASTWBD.001>  

### 6.10. NASADEM  

- <https://doi.org/10.5067/MEaSUREs/NASADEM/NASADEM_NC.001>  
- <https://doi.org/10.5067/MEaSUREs/NASADEM/NASADEM_NUMNC.001>  

### 6.11. HLS v2.0  

- <https://lpdaac.usgs.gov/product_search/?collections=HLS&view=list>  
- <https://doi.org/10.5067/HLS/HLSL30.002>  
- <https://doi.org/10.5067/HLS/HLSS30.002>  

### 6.12. GEOLST4KHR v002

- <https://doi.org/10.5067/MEaSUREs/LSTE/GEOLST4KHR.002>

### 6.13. Landsat ARD

- <https://doi.org/10.5066/P960F8OC>

### 6.14. US NPS Water Balance  

- [User Guide](https://screenedcleanedsummaries.s3.us-west-2.amazonaws.com/Gridded_Water_Balance_Model_April_2021.pdf)  

## 7. Sample Request Retention  

AppEEARS sample request outputs are available to download for a limited amount of time after completion. Please visit <https://appeears.earthdatacloud.nasa.gov/help?section=sample-retention> for details.  

## 8. Data Product Citations  

- Schaaf, C., Wang, Z. (2021). MODIS/Terra+Aqua BRDF/Albedo Nadir BRDF Adjusted Ref Daily L3 Global - 500m V061. NASA EOSDIS Land Processes Distributed Active Archive Center. Accessed 2023-12-21 from https://doi.org/10.5067/MODIS/MCD43A4.061. Accessed December 21, 2023.

## 9. Software Citation  

AppEEARS Team. (2023). Application for Extracting and Exploring Analysis Ready Samples (AppEEARS). Ver. 3.40.2. NASA EOSDIS Land Processes Distributed Active Archive Center (LP DAAC), USGS/Earth Resources Observation and Science (EROS) Center, Sioux Falls, South Dakota, USA. Accessed December 21, 2023. https://appeears.earthdatacloud.nasa.gov

## 10. Feedback  

We value your opinion. Please help us identify what works, what doesn't, and anything we can do to make AppEEARS better by submitting your feedback at https://appeears.earthdatacloud.nasa.gov/feedback or to LP DAAC User Services at <https://lpdaac.usgs.gov/lpdaac-contact-us/>  
