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

    Name: nbar_lc_8  

    Date Completed:** 2023-12-21T12:04:01.085906  

    ID: 1e9a044a-9e9b-447b-8a07-8b0877dcdeb1  

    Details:  

        Start Date: 01-01-2012  

        End Date: 12-31-2012
    
        Layers:  

            Nadir_Reflectance_Band1 (MCD43A4.061)  
            Nadir_Reflectance_Band2 (MCD43A4.061)  
            Nadir_Reflectance_Band3 (MCD43A4.061)  
            Nadir_Reflectance_Band4 (MCD43A4.061)  
    
        Coordinates:  

            1, 22031, 70.2958, -35.1542  
            2, 6045, 60.6708, -142.9958  
            3, 27989, 34.7208, 42.4708  
            4, 25931, 61.4542, -151.8292  
            5, 20260, 68.3792, -67.1208  
            6, 22953, 54.9375, 160.9458  
            7, 12200, 36.4042, 109.8958  
            8, 11472, 41.8875, 127.0458  
            9, 26714, 80.5958, -49.0292  
            10, 29484, 42.2625, 78.9042  
            11, 19112, 77.5792, -29.5792  
            12, 37949, 50.7375, 89.5125  
            13, 22835, 71.7292, -48.7958  
            14, 29119, 67.5292, -156.3208  
            15, 21057, 80.2542, -41.8958  
            16, 31595, 67.8542, -65.3208  
            17, 22459, 56.5958, -132.8542  
            18, 19706, 82.2792, -42.9292  
            19, 5864, 56.7708, -134.8875  
            20, 3568, 33.6708, 76.5625  
            21, 25050, 77.2792, -50.3042  
            22, 19401, 77.3458, -45.4375  
            23, 40141, 76.8208, 67.4125  
            24, 28743, 65.8958, -40.6375  
            25, 4808, 43.5792, -103.3375  
            26, 24235, 69.3708, -39.3458  
            27, 21428, 75.4792, -52.5208  
            28, 28998, 34.3208, 80.8958  
            29, 26254, 80.5875, 96.8875  
            30, 19482, 73.0875, -24.3042  
            31, 22339, 77.0708, -38.3375  
            32, 19951, 74.9958, -54.7958  
            33, 20506, 61.7875, -42.9625  
            34, 23913, 73.4792, -40.3958  
            35, 10141, 43.5875, 124.9375  
            36, 27716, 76.4042, -67.9125  
            37, 6282, 54.4458, -162.7875  
            38, 28759, 79.6875, -47.5875  
            39, 23608, 78.9875, -22.8792  
            40, 27771, 73.8458, -34.5458  
            41, 19743, 68.1125, -45.2042  
            42, 20678, 80.8375, -36.1042  
            43, 18255, 81.7125, -38.9708  
            44, 36878, 29.7292, 100.5958  
            45, 5269, 52.6125, -118.2958  
            46, 27023, 81.6125, -36.9542  
            47, 21861, 69.6958, -48.4292  
            48, 799, 29.4875, 82.7542  
            49, 23300, 79.6542, -54.4958  
            50, 28892, 82.1375, -70.8292  
            51, 28585, 71.0708, -33.5125  
            52, 32371, 76.7125, -80.5375  
            53, 20821, 68.0542, -35.4042  
            54, 12912, 48.2625, 98.6708  
            55, 18203, 76.2125, -49.6958  
            56, 28434, 42.2375, 80.6208  
            57, 24195, 62.1292, -42.3625  
            58, 21951, 70.1458, -25.3375  
            59, 10376, 72.6792, 141.0792  
            60, 10385, 54.4875, 160.2958  
            61, 28656, 76.5708, -38.7375  
            62, 26410, 67.5458, -37.6958  
            63, 19203, 80.5792, 95.7042  
            64, 23794, 75.5375, -29.1458  
            65, 21933, 78.9375, -28.0625  
            66, 23170, 80.6458, 61.2292  
            67, 23024, 61.4125, 6.5542  
            68, 13729, 54.3958, -120.9792  
            69, 401, 2.9875, -73.6875  
            70, 19975, 81.6125, -18.2208  
            71, 24389, 79.0292, 17.4792  
            72, 22593, 79.9125, -34.9708  
            73, 23203, 60.0375, 151.0958  
            74, 5971, 60.1958, -139.7042  
            75, 31946, 72.3958, -75.7292  
            76, 22619, 75.3542, 59.9958  
            77, 20743, 46.0958, 91.6375  
            78, 33048, 63.0125, -150.4708  
            79, 25914, 75.2292, -20.0125  
            80, 25968, 78.3208, 101.3708  
            81, 27810, 70.9875, -39.6958  
            82, 28788, 66.0958, -172.4292  
            83, 22147, 72.3375, -31.1042  
            84, 28485, 81.4542, -16.1042  
            85, 28159, 82.4542, -32.7708  
            86, 3675, 61.5208, -94.8042  
            87, 19432, 42.6042, 43.8042  
            88, 38568, 34.0958, 75.4375  
            89, 26193, 75.9708, 107.5625  
            90, 41376, 1.9625, 12.2625  
            91, 25350, 81.5792, -40.4375  
            92, 26983, 70.1958, -51.5542  
            93, 28046, 78.0625, -80.7625  
            94, 29702, 24.7792, -101.2958  
            95, 32556, 51.1042, -117.4292  
            96, 27241, 32.4875, 103.8042  
            97, 20387, 61.5458, -150.3625  
            98, 20651, 66.4792, -38.5625  
            99, 22829, 72.0958, -35.0375  
            100, 22320, 74.5208, -28.6625  
            101, 5267, 0.7042, -78.0042  
            102, 28391, 81.9875, -84.4375  
            103, 14461, 34.0208, 75.5042  
            104, 24347, 76.2875, -33.3625  
            105, 16215, 35.2875, 57.9792  
            106, 20259, 77.7292, -35.4625  
            107, 27094, 77.4458, -91.1875  
            108, 22995, 71.2042, -39.7625  
            109, 4464, 63.2542, -100.5708  
            110, 24549, 73.9292, -123.4542  
            111, 28234, 79.6625, -50.5292  
            112, 6097, 63.4958, -145.7458  
            113, 40142, 76.7542, 67.6208  
            114, 19357, 79.4375, -60.9458  
            115, 28188, 81.8708, -72.3792  
            116, 26135, 73.0292, -41.6208  
            117, 26688, 78.3542, -49.5375  
            118, 28025, 70.0042, -32.9292  
            119, 19998, 75.9208, -28.3375  
            120, 29099, 72.9458, -27.9958  
            121, 23398, 77.1708, -25.1042  
            122, 29521, 74.9042, -32.0625  
            123, 23035, 57.2375, -128.9875  
            124, 22487, 66.2708, -157.2875  
            125, 27137, 73.0042, -31.7625  
            126, 18561, 72.4208, -50.4458  
            127, 19408, 63.1792, -48.7125  
            128, 19152, 67.7375, -38.7125  
            129, 25184, 62.9458, -106.8375  
            130, 24607, 71.1042, 128.4875  
            131, 28459, 75.4958, -43.4292  
            132, 22045, 66.3292, -172.0792  
            133, 29631, 71.4708, -39.3292  
            134, 5738, 62.3708, -126.1375  
            135, 26176, 65.9042, 57.8958  
            136, 24869, 70.2125, -73.8042  
            137, 24952, 82.5208, -44.3875  
            138, 21343, 81.2125, -94.0792  
            139, 26348, 78.4542, -50.4042  
            140, 18799, 70.0875, -30.3125  
            141, 22908, 76.6458, -77.9458  
            142, 32924, 59.1292, -136.7792  
            143, 44005, 27.7958, 88.2708  
            144, 22495, 65.4625, -46.9208  
            145, 27503, 80.0208, -47.4542  
            146, 1840, 40.1208, 74.2125  
            147, 6327, 52.8458, -169.7875  
            148, 4888, 57.5875, -128.4792  
            149, 24806, 41.7958, -117.2458  
    
    Version: This request was processed by AppEEARS version 3.40.2  

## 2. Request File Listing  

- Comma-separated values file with data extracted for a specific product
  - nbar-lc-8-MCD43A4-061-results.csv
- Text file with data pool URLs for all source granules used in the extraction
  - nbar-lc-8-granule-list.txt
- JSON request file which can be used in AppEEARS to create a new request
  - nbar-lc-8-request.json
- xml file
  - nbar-lc-8-MCD43A4-061-metadata.xml  

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
