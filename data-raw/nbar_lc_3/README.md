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

    Name: nbar_lc_3  

    Date Completed:** 2023-12-21T11:13:04.734996  

    ID: d91da3c5-5074-4773-8d59-971bcafd7c55  

    Details:  

        Start Date: 01-01-2012  

        End Date: 12-31-2012
    
        Layers:  

            Nadir_Reflectance_Band1 (MCD43A4.061)  
            Nadir_Reflectance_Band2 (MCD43A4.061)  
            Nadir_Reflectance_Band3 (MCD43A4.061)  
            Nadir_Reflectance_Band4 (MCD43A4.061)  
    
        Coordinates:  

            1, 23937, 62.6792, -120.8625  
            2, 2859, 62.6458, -82.8375  
            3, 27772, 15.8292, -14.6625  
            4, 25398, 60.4208, -120.6292  
            5, 26922, 43.7708, -117.4125  
            6, 16797, 55.3125, -88.7625  
            7, 13888, 16.6792, 78.8208  
            8, 6128, 31.1125, 69.2042  
            9, 2205, 62.2542, -75.9042  
            10, 14690, 47.0542, -120.2875  
            11, 18777, 42.9958, 128.3458  
            12, 17149, 41.0292, 43.1792  
            13, 4919, 37.9292, -104.1375  
            14, 3403, 24.2208, -101.6208  
            15, 39809, 5.8792, 34.8375  
            16, 20546, 4.9792, 30.7458  
            17, 324, 6.9625, -71.2792  
            18, 24151, 42.5958, 20.0625  
            19, 23807, 0.7708, 99.6792  
            20, 18722, 69.6875, 75.9625  
            21, 2732, 50.8125, -85.7125  
            22, 24243, 71.7208, 100.5292  
            23, 20593, 73.0625, 95.3792  
            24, 19831, 13.1708, 35.9958  
            25, 2983, 53.4708, 41.1208  
            26, 9319, 63.8375, 142.6708  
            27, 40048, 7.3792, 30.8542  
            28, 13196, 57.9458, 30.8792  
            29, 11100, 48.5125, 82.2208  
            30, 25128, 45.3958, -121.1542  
            31, 22549, 54.0042, 135.2208  
            32, 4967, 10.7375, -72.1458  
            33, 19285, 56.8375, 50.5208  
            34, 21631, 68.6042, -111.4292  
            35, 6324, 52.6625, -170.5875  
            36, 29666, 72.9042, 81.1792  
            37, 36865, 33.7958, 102.2875  
            38, 21982, 8.3375, 25.3208  
            39, 26991, 43.0208, 107.3375  
            40, 26241, 66.2375, 52.7958  
            41, 12508, 57.7875, -129.9542  
            42, 18122, 50.1792, 50.9292  
            43, 14919, 57.4792, -132.0625  
            44, 292, 8.9125, 117.7792  
            45, 17383, 28.0792, 99.8875  
            46, 23038, 48.5125, -107.8208  
            47, 21031, 60.2875, 99.3042  
            48, 20007, 33.4875, 101.2792  
            49, 9952, 44.0458, 17.2208  
            50, 24673, 37.2042, 13.7958  
            51, 37449, 30.3458, 93.9125  
            52, 22905, 64.6208, 156.5958  
            53, 9930, 44.1042, -117.2792  
            54, 22966, 42.3542, 27.5458  
            55, 8688, 11.1875, 9.9625  
            56, 22771, 67.4792, -115.7292  
            57, 27133, 51.3292, 127.0875  
            58, 26016, 69.6125, 91.5208  
            59, 25939, 65.7458, 122.7042  
            60, 20824, 37.8125, 36.2042  
            61, 26640, 49.6042, 112.0042  
            62, 27359, 37.4875, 75.8042  
            63, 17066, 50.8208, 56.8208  
            64, 27301, 16.3208, 44.4458  
            65, 19372, 66.7042, -67.5542  
            66, 23648, 5.1292, -1.4042  
            67, 3724, 40.7292, -103.5125  
            68, 10761, 40.5208, 118.4292  
            69, 27627, 59.9208, -1.3375  
            70, 3887, 10.6792, -1.5708  
            71, 3698, 9.6625, 32.5458  
            72, 9909, 7.8708, -68.7542  
            73, 4263, 45.2875, -107.0625  
            74, 28483, 54.4458, 124.1042  
            75, 15871, 37.7208, 106.8625  
            76, 1742, 43.3458, -80.1375  
            77, 18400, 62.4125, 46.4708  
            78, 24988, 52.1292, 81.1875  
            79, 9769, 33.4292, 90.6042  
            80, 8223, 46.1958, 123.0125  
            81, 15999, 9.6375, 16.5625  
            82, 18682, 5.8542, 39.0375  
            83, 18936, 69.2292, 171.7042  
            84, 23805, 9.4708, 14.8292  
            85, 23448, 57.7625, -125.9375  
            86, 3581, 56.3875, 44.7625  
            87, 41966, 8.6375, 6.6875  
            88, 5312, 43.3958, -100.7125  
            89, 36515, 37.6542, 107.2125  
            90, 10778, 31.7375, 93.8042  
            91, 7284, 47.7792, -117.8708  
            92, 7687, 58.6625, 161.8375  
            93, 1422, 63.5958, -66.2375  
            94, 21863, 54.5625, 37.8042  
            95, 42961, 65.7875, -16.2292  
            96, 20106, 66.3375, 176.2625  
            97, 21947, 62.8875, 53.9708  
            98, 6727, 9.1125, 33.1208  
            99, 2268, 57.7042, -96.0292  
            100, 42832, 56.4292, -6.0042  
            101, 42397, 46.6292, 1.2042  
            102, 2421, 55.8375, -88.7625  
            103, 1072, 35.6708, -75.8458  
            104, 15297, 31.9458, 66.5125  
            105, 15371, 6.5042, 34.3292  
            106, 40641, 10.0458, 23.1708  
            107, 29266, 71.2208, -71.5208  
            108, 9841, 6.8792, 25.0125  
            109, 29869, 43.5875, 86.7792  
            110, 26832, 33.8875, -2.8458  
            111, 16965, 34.8792, -5.7792  
            112, 20103, 4.2458, -66.6625  
            113, 19476, 16.3542, 38.1458  
            114, 2515, 15.6292, -93.2125  
            115, 31186, 47.8792, -55.6708  
            116, 29927, 70.6458, 148.4292  
            117, 31304, 3.9875, -70.6875  
            118, 26695, 41.0792, 112.5125  
            119, 4794, 4.8375, 38.2875  
            120, 24232, 58.0458, 86.5208  
            121, 20342, 61.9292, 47.7042  
            122, 37611, 28.3292, 89.6625  
            123, 1639, 39.3208, -79.8875  
            124, 27636, 60.7542, -0.9375  
            125, 20897, 66.6208, -119.0875  
            126, 15174, 58.6125, 75.8792  
            127, 2332, 45.3375, -100.8208  
            128, 37766, 31.2542, 87.8542  
            129, 27018, 51.3458, -96.0625  
            130, 16255, 6.3875, 25.2458  
            131, 605, 8.9875, -75.6792  
            132, 24788, 72.3375, 107.1958  
            133, 2368, 43.8375, 72.9125  
            134, 19101, 43.6958, 62.4875  
            135, 21557, 65.5875, -51.6292  
            136, 17287, 30.9958, -84.0042  
            137, 1767, 39.4792, 110.5542  
            138, 10901, 4.0125, -59.8625  
            139, 2289, 36.6542, -86.7208  
            140, 36696, 24.5042, 102.7958  
            141, 17424, 36.6208, 112.5458  
            142, 28936, 42.3958, -112.3458  
            143, 24089, 52.1958, 73.1542  
            144, 19377, 46.5042, 46.2708  
            145, 26352, 64.7458, 16.7875  
            146, 25897, 64.3208, 43.4958  
            147, 6780, 31.9042, 88.4542  
            148, 25485, 48.3292, -109.7542  
            149, 5701, 53.7458, -129.9625  
            150, 21256, 65.0125, -67.9542  
    
    Version: This request was processed by AppEEARS version 3.40.2  

## 2. Request File Listing  

- Comma-separated values file with data extracted for a specific product
  - nbar-lc-3-MCD43A4-061-results.csv
- Text file with data pool URLs for all source granules used in the extraction
  - nbar-lc-3-granule-list.txt
- JSON request file which can be used in AppEEARS to create a new request
  - nbar-lc-3-request.json
- xml file
  - nbar-lc-3-MCD43A4-061-metadata.xml  

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
