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

    Name: nbar_lc_5  

    Date Completed:** 2023-12-21T11:14:07.279940  

    ID: 96898cbe-c779-4654-a8ab-1134006248c7  

    Details:  

        Start Date: 01-01-2012  

        End Date: 12-31-2012
    
        Layers:  

            Nadir_Reflectance_Band1 (MCD43A4.061)  
            Nadir_Reflectance_Band2 (MCD43A4.061)  
            Nadir_Reflectance_Band3 (MCD43A4.061)  
            Nadir_Reflectance_Band4 (MCD43A4.061)  
    
        Coordinates:  

            1, 6674, 53.1542, 58.1625  
            2, 3620, 51.6875, 36.3042  
            3, 39249, 34.2958, 10.0542  
            4, 902, 8.0708, -70.1958  
            5, 26530, 27.3292, -80.9792  
            6, 7398, 43.5542, 74.3708  
            7, 15073, 14.7458, 105.1042  
            8, 10107, 30.3792, 115.4125  
            9, 2911, 32.7375, 72.9542  
            10, 23496, 11.1458, 38.0375  
            11, 9842, 47.8875, 12.9542  
            12, 15014, 12.6458, -6.4375  
            13, 18707, 33.6458, -101.9625  
            14, 2438, 20.4208, -100.3958  
            15, 5065, 52.5208, 9.5875  
            16, 18802, 56.2625, 70.1125  
            17, 960, 34.8792, -96.9292  
            18, 1230, 50.4292, 1.8542  
            19, 23067, 57.8375, 53.2208  
            20, 3475, 52.0792, 43.2542  
            21, 6288, 40.8042, 8.8208  
            22, 1527, 7.4625, 38.0625  
            23, 3238, 35.4958, 112.7542  
            24, 1254, 41.5375, 32.0042  
            25, 4668, 5.4625, -69.9125  
            26, 2903, 35.5958, -95.9125  
            27, 27286, 9.9125, 77.0792  
            28, 37766, 6.0625, 10.1125  
            29, 5970, 30.9292, -87.1875  
            30, 21433, 28.5292, 30.5875  
            31, 38965, 31.9708, 11.0125  
            32, 16965, 34.8792, -5.7792  
            33, 17287, 30.9958, -84.0042  
            34, 1489, 8.8292, 3.3958  
            35, 1792, 49.5458, 1.9208  
            36, 11004, 24.4875, 73.6375  
            37, 39183, 34.0542, -3.1792  
            38, 8986, 38.5458, 113.9208  
            39, 9816, 53.2875, 19.7375  
            40, 12075, 23.5375, 108.1708  
            41, 10018, 9.5125, 6.4542  
            42, 17534, 23.6125, 79.3292  
            43, 8260, 9.0625, 34.9042  
            44, 4740, 53.5875, 18.1125  
            45, 5464, 28.4542, 80.3375  
            46, 28423, 20.4542, -87.7292  
            47, 507, 58.8208, 42.4875  
            48, 2328, 56.0208, 12.2958  
            49, 20221, 14.6625, 10.0875  
            50, 16287, 20.3125, -100.2375  
            51, 26866, 30.6458, -7.7208  
            52, 5066, 7.9458, 10.7042  
            53, 12265, 54.6625, 31.6542  
            54, 9080, 13.4125, -14.6375  
            55, 16750, 27.0792, 103.6292  
            56, 12667, 13.4292, -14.2375  
            57, 13320, 23.7375, 87.5125  
            58, 3320, 55.2792, 32.4292  
            59, 8149, 46.5958, 122.3125  
            60, 2160, 37.6625, -98.2625  
            61, 38914, 31.2375, 20.1958  
            62, 12525, 44.4625, 3.3458  
            63, 2566, 9.1625, 77.9875  
            64, 14103, 12.5542, -13.8708  
            65, 14072, 33.6542, -95.1208  
            66, 2880, 46.8625, 28.3208  
            67, 5030, 12.9792, 102.0792  
            68, 11861, 55.6208, 47.7792  
            69, 5375, 51.3875, 25.5625  
            70, 5436, 54.3042, -1.2625  
            71, 6873, 47.1875, 121.3292  
            72, 37869, 7.8708, 10.8292  
            73, 23359, 53.1042, -90.1875  
            74, 9949, 56.9792, 41.7292  
            75, 7346, 39.6375, 69.2958  
            76, 37614, 1.5958, 30.3125  
            77, 240, 46.8708, -116.7458  
            78, 39693, 35.7125, 2.1042  
            79, 12098, 51.1125, 5.9875  
            80, 5935, 45.1542, -73.7208  
            81, 22157, 32.6625, 61.6708  
            82, 5377, 48.7875, 2.7375  
            83, 373, 56.3292, 34.1375  
            84, 11314, 9.8875, 38.5458  
            85, 16741, 16.7792, 104.9875  
            86, 38174, 10.4708, 16.7542  
            87, 9937, 9.6625, -73.6708  
            88, 17406, 46.7708, -94.3208  
            89, 10610, 8.4875, -6.9292  
            90, 1718, 48.6375, 17.2625  
            91, 5018, 9.3292, 17.2458  
            92, 374, 25.3042, 90.6375  
            93, 6822, 8.2208, 39.6125  
            94, 23058, 59.5958, 11.3875  
            95, 12969, 5.7125, 7.1208  
            96, 1826, 25.1375, 91.9042  
            97, 17377, 51.5042, 26.4458  
            98, 37801, 6.6042, 11.1625  
            99, 14262, 28.9708, 66.6375  
            100, 12858, 40.1042, -82.6708  
            101, 7954, 8.6625, 7.8875  
            102, 5513, 12.4458, 79.4125  
            103, 8122, 8.4875, 16.6208  
            104, 39045, 32.8708, 22.2792  
            105, 38410, 13.6208, 1.8708  
            106, 3945, 51.6708, 30.6042  
            107, 12481, 51.4292, -99.7292  
            108, 402, 21.6292, 78.3625  
            109, 39241, 34.2875, -4.1708  
            110, 2400, 39.6208, -101.0375  
            111, 21136, 45.8292, 9.8792  
            112, 37925, 8.6708, -8.7208  
            113, 12441, 44.7875, 19.1292  
            114, 38163, 10.4042, 16.5125  
            115, 39540, 35.0708, -3.3208  
            116, 10016, 17.1958, 121.3875  
            117, 1861, 14.1542, 77.1708  
            118, 13888, 57.0292, 29.7125  
            119, 3499, 19.0958, 78.4125  
            120, 20774, 41.7458, 26.1458  
            121, 8768, 56.8708, 35.0958  
            122, 1376, 45.1792, 7.9292  
            123, 15101, 13.6792, -86.7708  
            124, 25077, 29.2542, -81.4375  
            125, 679, 17.4458, 73.6292  
            126, 39268, 34.3792, -5.2125  
            127, 38759, 24.3958, 30.6292  
            128, 14659, 37.1125, 35.5708  
            129, 26059, 36.6458, 5.6292  
            130, 14030, 13.8792, 108.9458  
            131, 14278, 24.1458, 78.0458  
            132, 29498, 16.4208, 120.9708  
            133, 1403, 32.4958, 118.1292  
            134, 16491, 3.2708, 33.2292  
            135, 9493, 22.4708, 79.8958  
            136, 38669, 16.5875, -14.7625  
            137, 136, 38.9875, 46.8292  
            138, 14741, 35.0542, 105.4958  
            139, 10027, 7.3708, 11.2292  
            140, 4405, 7.6208, -3.5958  
            141, 38785, 24.8958, 30.5792  
            142, 11692, 42.3458, 22.9625  
            143, 2091, 23.0042, 89.2292  
            144, 13007, 33.7875, -79.6125  
            145, 23212, 1.6708, 23.7458  
            146, 2104, 10.7458, -6.9958  
            147, 17217, 52.4292, 34.6958  
    
    Version: This request was processed by AppEEARS version 3.40.2  

## 2. Request File Listing  

- Comma-separated values file with data extracted for a specific product
  - nbar-lc-5-MCD43A4-061-results.csv
- Text file with data pool URLs for all source granules used in the extraction
  - nbar-lc-5-granule-list.txt
- JSON request file which can be used in AppEEARS to create a new request
  - nbar-lc-5-request.json
- xml file
  - nbar-lc-5-MCD43A4-061-metadata.xml  

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
