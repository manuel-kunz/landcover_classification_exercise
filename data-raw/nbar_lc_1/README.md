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

    Name: nbar_lc_1  

    Date Completed:** 2023-12-21T11:12:04.543976  

    ID: bdf004de-393c-41c7-a45f-9d634e08b413  

    Details:  

        Start Date: 01-01-2012  

        End Date: 12-31-2012
    
        Layers:  

            Nadir_Reflectance_Band1 (MCD43A4.061)  
            Nadir_Reflectance_Band2 (MCD43A4.061)  
            Nadir_Reflectance_Band3 (MCD43A4.061)  
            Nadir_Reflectance_Band4 (MCD43A4.061)  
    
        Coordinates:  

            1, 26074, 57.4792, 76.8542  
            2, 15771, 61.3375, 72.7875  
            3, 23856, 42.8792, 24.9208  
            4, 11896, 24.3875, 113.3042  
            5, 35623, 52.2292, 121.5958  
            6, 33936, 61.9625, 168.4792  
            7, 44105, 0.0458, -66.7125  
            8, 5070, 55.8375, -112.8792  
            9, 6494, 57.3208, 26.2875  
            10, 9810, 55.4542, 133.0958  
            11, 16910, 21.8625, 77.1208  
            12, 9518, 50.7292, 133.9542  
            13, 56, 2.0208, -65.7042  
            14, 1199, 5.1875, -62.3792  
            15, 22137, 52.4792, 35.2708  
            16, 41366, 3.7125, 13.1708  
            17, 1909, 59.1208, -138.1708  
            18, 1253, 56.2125, -70.9875  
            19, 20080, 46.7708, -66.6875  
            20, 3218, 53.8292, -91.8292  
            21, 13892, 6.8125, -7.6375  
            22, 14546, 59.0458, 83.5292  
            23, 12945, 25.8875, 93.5375  
            24, 28363, 49.7792, 21.8792  
            25, 33975, 57.0542, 162.8208  
            26, 18475, 50.1958, 122.6458  
            27, 29717, 61.4375, 113.0208  
            28, 1575, 8.6792, -2.7542  
            29, 5984, 54.4792, 63.0542  
            30, 2824, 30.1208, 78.9208  
            31, 6627, 23.7625, 111.7375  
            32, 37552, 60.8375, 102.8458  
            33, 8779, 31.0042, 116.0042  
            34, 21796, 60.8042, -126.4208  
            35, 12197, 10.7292, 98.7375  
            36, 2560, 19.1958, 80.1042  
            37, 6588, 1.2375, 112.3292  
            38, 4060, 26.7792, 113.8292  
            39, 11872, 49.9042, 110.5958  
            40, 24489, 6.8708, 31.0375  
            41, 20836, 62.7208, 150.6792  
            42, 9375, 46.6375, 133.5292  
            43, 2505, 17.6708, -93.8542  
            44, 33155, 65.8958, -152.7875  
            45, 27212, 65.0542, -16.9208  
            46, 4857, 26.0042, 77.1542  
            47, 43724, 6.0292, -58.6042  
            48, 27965, 6.8458, -73.8958  
            49, 245, 12.4875, 124.8125  
            50, 30655, 6.9792, -60.5292  
            51, 1631, 34.4042, 103.7625  
            52, 21436, 20.8542, 99.7292  
            53, 35565, 26.0625, 115.2708  
            54, 27736, 29.6875, -108.4958  
            55, 5373, 23.6125, 105.6375  
            56, 36764, 28.6125, 101.6625  
            57, 1983, 16.5292, -89.1208  
            58, 24381, 57.9875, 25.2458  
            59, 35321, 1.8125, 114.1542  
            60, 4286, 38.5958, -109.2625  
            61, 48, 3.1208, -64.9792  
            62, 19003, 63.6708, 13.5792  
            63, 18993, 6.7875, 36.9625  
            64, 97, 2.6292, -67.8458  
            65, 21489, 67.4458, -50.1125  
            66, 24217, 61.8625, 31.9792  
            67, 1062, 43.5458, -72.6125  
            68, 10174, 5.4625, 115.6958  
            69, 10737, 47.8292, 120.5208  
            70, 21481, 63.9542, 45.7875  
            71, 22967, 42.2125, 27.6875  
            72, 37173, 17.4542, 94.6375  
            73, 3276, 28.4792, 113.9458  
            74, 38152, 11.6042, 76.3208  
            75, 9386, 1.7375, 17.4708  
            76, 26240, 57.4208, -119.2625  
            77, 34553, 35.1958, 134.2208  
            78, 24204, 53.9875, 22.4542  
            79, 2160, 37.6625, -98.2625  
            80, 24282, 6.2375, -63.5458  
            81, 9365, 55.2625, 31.8292  
            82, 13433, 8.2875, -6.4625  
            83, 36628, 33.3708, 104.5208  
            84, 17324, 57.9208, 59.6625  
            85, 27292, 47.0292, -66.4792  
            86, 2315, 9.1708, 35.8458  
            87, 1167, 50.8375, -72.0292  
            88, 25844, 64.5208, 61.7875  
            89, 22244, 40.5708, 74.3625  
            90, 26978, 64.4625, 158.6458  
            91, 4221, 61.9292, -98.8625  
            92, 12216, 66.7125, 119.0292  
            93, 19772, 35.9042, 136.4625  
            94, 20073, 57.7875, 46.6625  
            95, 809, 33.1042, 131.2458  
            96, 11444, 23.6542, 107.6125  
            97, 6020, 6.4958, 10.0042  
            98, 10730, 39.3875, -120.5375  
            99, 9734, 8.8292, -8.3542  
            100, 32582, 40.5292, -122.7125  
            101, 22886, 50.8875, 29.7875  
            102, 19682, 67.0125, 148.7625  
            103, 15632, 64.8792, 77.4625  
            104, 27107, 74.3208, 109.0375  
            105, 229, 1.0542, -70.4708  
            106, 11501, 62.3958, 120.5875  
            107, 11678, 49.9625, 112.4708  
            108, 27983, 40.8125, -107.4708  
            109, 1571, 38.3542, -3.7042  
            110, 38458, 52.4375, 83.7958  
            111, 23310, 61.6375, 148.4958  
            112, 32027, 33.6208, -100.2208  
            113, 21400, 53.3125, 119.3125  
            114, 3803, 51.3125, -100.2792  
            115, 2781, 38.2292, -90.7875  
            116, 3663, 33.6542, 130.4708  
            117, 23462, 60.1375, 31.0458  
            118, 18921, 41.8875, 45.4542  
            119, 19342, 35.5625, -85.0042  
            120, 26291, 50.6875, 109.3125  
            121, 35884, 18.4625, 110.0542  
            122, 30083, 4.7375, -55.9792  
            123, 23248, 50.2292, 28.9292  
            124, 25681, 55.7792, -131.3125  
            125, 1494, 27.8708, 114.1792  
            126, 16907, 54.4625, 43.1292  
            127, 21860, 61.3208, -127.8458  
            128, 12665, 62.0375, 109.7208  
            129, 13371, 58.5625, 95.2042  
            130, 19653, 64.6125, -145.7375  
            131, 21942, 41.2958, 33.3375  
            132, 4243, 16.8958, -99.6042  
            133, 23775, 40.6875, 89.6125  
            134, 890, 8.4292, 34.7792  
            135, 8305, 41.5375, 43.0625  
            136, 4449, 51.3375, 19.2875  
            137, 13079, 56.2042, 30.4458  
            138, 15054, 63.6542, 80.2042  
            139, 22346, 59.4125, -129.3125  
            140, 24574, 66.1292, 64.4458  
            141, 35680, 28.2292, 114.3375  
            142, 5089, 49.7375, -116.4792  
            143, 35575, 24.4792, 114.7792  
            144, 25079, 6.5792, 124.6958  
            145, 36454, 23.0708, 105.5792  
            146, 14698, 47.1542, 120.1458  
            147, 17766, 57.3875, 58.2958  
            148, 13753, 56.4542, 91.3875  
            149, 6481, 16.3875, 73.5125  
    
    Version: This request was processed by AppEEARS version 3.40.2  

## 2. Request File Listing  

- Comma-separated values file with data extracted for a specific product
  - nbar-lc-1-MCD43A4-061-results.csv
- Text file with data pool URLs for all source granules used in the extraction
  - nbar-lc-1-granule-list.txt
- JSON request file which can be used in AppEEARS to create a new request
  - nbar-lc-1-request.json
- xml file
  - nbar-lc-1-MCD43A4-061-metadata.xml  

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
