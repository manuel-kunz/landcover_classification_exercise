# AppEEARS Area Sample Extraction Readme  

## Table of Contents  

1. Request Parameters  
2. Request File Listing  
3. Area Sample Extraction Process  
4. Area Sample Naming Convention  
5. Data Quality  
    5.1. Moderate Resolution Imaging Spectroradiometer (MODIS)  
    5.2. NASA MEaSUREs Shuttle Radar Topography Mission (SRTM) Version 3 (v3)  
    5.3. Gridded Population of the World (GPW) Version 4 Revision 11 (v4.11)  
    5.5. Suomi National Polar-orbiting Partnership (S-NPP) NASA Visible Infrared Imaging Radiometer Suite (VIIRS)  
    5.5. Soil Moisture Active Passive (SMAP)  
    5.6. Daymet (v4R1)
    5.7.1. Ecosystem Spaceborne Thermal Radiometer Experiment on Space Station (ECOSTRESS) Swath V1 and V2
    5.7.2. Ecosystem Spaceborne Thermal Radiometer Experiment on Space Station (ECOSTRESS) Tiled V2
    5.8. Advanced Spaceborne Thermal Emission and Reflection Radiometer (ASTER) Global Digital Elevation Model (GDEM) Version 3 (v3) and Global Water Bodies Database (WBD) Version 1 (v1)  
    5.9. NASA MEaSUREs NASA Digital Elevation Model (DEM) Version 1 (v1)  
    5.10. Harmonized Landsat Sentinel-2 (HLS) Version 2.0  
    5.11. Landsat Collection 2 (C2) U.S. Analysis Ready Data (ARD)  
    5.12. US National Park Service (NPS) Historical Water Balance for the Continental United States (CONUS)
6. Data Caveats  
7. Documentation  
8. Sample Request Retention  
9. Data Product Citations  
10. Software Citation  
11. Feedback  

## 1. Request Parameters  

    Name: raster_download  

    Date Completed: 2023-12-28T15:04:35.066693  

    ID: fcfa7896-1ce1-4077-9f59-34632af46be7  

    Details:  

        
        Number of Vector Features:    1  

        Start Date:                   01-01-2012  

        End Date:                     12-31-2012  
        
        Layers:  

                Nadir_Reflectance_Band1 (MCD43A4.061)  
                Nadir_Reflectance_Band2 (MCD43A4.061)  
                Nadir_Reflectance_Band3 (MCD43A4.061)  
                Nadir_Reflectance_Band4 (MCD43A4.061)  
      
        Output Projection:            Geographic
        Datum:                        WGS84
    
        EPSG:                         4326  
    
        PROJ.4:                       "+proj=longlat +datum=WGS84 +no_defs=True"  
    
        Output Format:                geotiff  

    Version: This request was processed by AppEEARS version 3.41  

## 2. Request File Listing  

**Supporting Files:**  

- raster-download-MCD43A4-061-metadata.xml
- raster-download-granule-list.txt
- raster-download-request.json
- MCD43A4-061-BRDF-Albedo-Band-Mandatory-Quality-Band1-lookup.csv
- MCD43A4-061-BRDF-Albedo-Band-Mandatory-Quality-Band2-lookup.csv
- MCD43A4-061-BRDF-Albedo-Band-Mandatory-Quality-Band3-lookup.csv
- MCD43A4-061-BRDF-Albedo-Band-Mandatory-Quality-Band4-lookup.csv
- MCD43A4-061-BRDF-Albedo-Band-Mandatory-Quality-Band1-Statistics-QA.csv
- MCD43A4-061-BRDF-Albedo-Band-Mandatory-Quality-Band2-Statistics-QA.csv
- MCD43A4-061-BRDF-Albedo-Band-Mandatory-Quality-Band3-Statistics-QA.csv
- MCD43A4-061-BRDF-Albedo-Band-Mandatory-Quality-Band4-Statistics-QA.csv
- MCD43A4-061-Statistics.csv

**Data Files:**  

Number of Extracted Data Files: 2,928  
Total Size of Extracted Data Files: 783.48 MB  

## 3. Area Sample Extraction Process  

When an area sample extraction request is successfully submitted, AppEEARS
implements a series of tools and services to extract the exact data the user is
interested in; or rather, extracts data from specific data layers that
intersect with the input vector file's features. AppEEARS first uploads the
input vector file and reprojects it to the source projection of the data layer
of interest. The PROJ.4 definitions for each data collection available through
AppEEARS are listed below.  

### MODIS (TERRA, AQUA, & Combined)  

    "+proj=sinu +lon_0=0 +x_0=0 +y_0=0 +R=6371007.181 +units=m +no_defs=True"

### SRTM v3 (30m & 90m)  

    "+proj=longlat +datum=WGS84 +no_defs=True"  

### MODIS Snow Products (TERRA & AQUA)  

    "+proj=sinu +lon_0=0 +x_0=0 +y_0=0 +R=6371007.181 +units=m +no_defs=True"  

### GPW v4.11  

    "+proj=longlat +datum=WGS84 +no_defs=True"  

### NPP NASA VIIRS  

    "+proj=sinu +lon_0=0 +x_0=0 +y_0=0 +R=6371007.181 +units=m +no_defs=True"  

### SMAP - Global  

    "+proj=cea +lon_0=0 +lat_ts=30 +x_0=0 +y_0=0 +datum=WGS84 +units=m +no_defs=True"  

### SMAP - Northern Hemisphere  

    "+proj=laea +lat_0=90 +lon_0=0 +x_0=0 +y_0=0 +datum=WGS84 +units=m +no_defs=True"  

### Daymet v4R1

    "+proj=lcc +lat_0=42.5 +lat_1=25 +lat_2=60 +lon_0=-100 +x_0=0 +y_0=0 +ellps=WGS84 +units=km +no_defs=True"  

### ECOSTRESS Swath V1 and V2 (see data caveats section below)  

    "+proj=longlat +datum=WGS84 +no_defs=True"  

### ECOSTRESS Tiled V2  

    "+proj=utm  +zone=XX +ellps=WGS84 +units=m +no_defs=True"

Where "XX" = UTM zone number.  

Example:  

    "+proj=utm  +zone=13 +ellps=WGS84 +units=m +no_defs=True"

### ASTER GDEM v3 and Global Water Bodies Database v1  

    "+proj=longlat +datum=WGS84 +no_defs=True"  

### NASADEM v1 (30m)  

    "+proj=longlat +datum=WGS84 +no_defs=True"  

### HLS v2.0 (HLSL30 v002 and HLSS30 v002)  

    "+proj=utm  +zone=XX +ellps=WGS84 +units=m +no_defs=True"

Where "XX" = UTM zone number.  

Example:  

    "+proj=utm  +zone=13 +ellps=WGS84 +units=m +no_defs=True"

### GEOLST4KHR v002

    "+proj=longlat +datum=WGS84 +no_defs=True"

Following the reprojection of the vector file, a bounding box for each feature in the vector file is determined. Each corner point is first determined using the minimum and maximum latitude and longitude values. An additional 1 pixel buffer is applied to each corner point to create the feature bounding box. See below for details on how the bounding box is determined.  

### Landsat C2 ARD

Landsat C2 ARD has 3 projections, one for the conterminous United States (CONUS), one for Alaska, and one for Hawaii.

CONUS:

    "+proj=aea +lat_1=55 +lat_2=65 +lat_0=50 +lon_0=-154 +x_0=0 +y_0=0 +datum=WGS84 +units=m +no_defs=True"

Alaska:

    "+proj=aea +lat_0=50 +lon_0=-154 +lat_1=55 +lat_2=65 +x_0=0 +y_0=0 +datum=WGS84 +units=m +no_defs=True"

Hawaii:

    "+proj=aea +lat_0=3 +lon_0=-157 +lat_1=8 +lat_2=18 +x_0=0 +y_0=0 +datum=WGS84 +units=m +no_defs=True"

### US NPS Water Balance

    "+proj=lcc +lat_1=25 +lat_2=60 +lat_0=42.5 +lon_0=-100 +x_0=0 +y_0=0 +datum=WGS84 +units=m +no_defs=True"

#### Feature Bounding Box Calculation  

- `UpperLeft   =   (maxLat + cellSize), (minLon - cellSize)`  
- `LowerLeft   =   (minLat - cellSize), (minLon - cellSize)`  
- `UpperRight  =   (maxLat + cellSize), (maxLon + cellSize)`  
- `LowerRight  =   (minLat - cellSize), (maxLon + cellSize)`  

For each feature, a series of tools and services are used to determine which spatial tiles intersect with the coordinates of the feature bounding box for the data layer of interest. These tiles are extracted (from OPeNDAP) to a server-side work environment where they are mosaicked into an image. Tile extraction and processing is implemented for each requested composite period (e.g., daily, weekly, 8-day, 16-day, monthly, seasonal, or annual) to create a time series image stack. If the user chooses to have the output projection for each extracted data file match, then the image stack is reprojected into the user-requested projection using the PROJ.4 definition described above. The image stacks are finally clipped to the input feature shape to only maintain the data intersecting the feature shape. Data outside of the feature shape are converted to a product-specific NODATA value. Each clipped image in the time series image stack is saved as a CF-compliant NetCDF file or in a series of Geospatial Tagged Image File Format (GeoTIFF) files with a unique name following the naming conventions described in Section 4 of this README.

AppEEARS implements a strict procedure for reprojecting data outputs. Pixel size and resampling methods are non-customizable in AppEEARS. Reprojected data are produced using the Geospatial Data Abstraction Library (GDAL) gdalwarp function in combination with the PROJ.4 string definition for the user-defined output projection type. Reprojection is performed using nearest neighbor resampling. If the projection units are the same between the native and output projections, the native pixel size is used to reproject the image. If the projection units between the native and output projections are different (e.g. sinusoidal (m) to geographic (degrees), pixel size is calculated by reprojecting the center pixel of the original image, calculating its width and height, and then squaring all pixels. The latitude and longitude of the region of interest are maintained in the conversion.

**NOTE:**  

- Requested date ranges may not match the reference date for multi-day products. AppEEARS takes an inclusive approach when extracting data for sample requests, often returning data that extends beyond the requested date range. This approach ensures that the returned data includes records for the entire requested date range.  
- If selected, the SRTM v3, ASTER GDEM v3 and Global Water Bodies Database v1, and NASADEM v1 products will be extracted regardless of the time period specified in AppEEARS because they are static datasets. The date field in the data tables reflect the nominal date for each of these products.  
- If the visualizations indicate that there are no data to display, proceed to checking the .csv output file. Data products that have both categorical and continuous data values (e.g. MOD15A2H) are not able to be displayed in the visualizations within AppEEARS.  

## 4. Area Sample Naming Convention  

Output data files returned by AppEEARS have the following naming convention:  

`<ProductShortName>.<Version>_<LayerName>_doy<Year><JulianDate>_<AppEEARSFeatureID>.<FileFormat>`  

### Example output file name (.tif)  

    MOD13Q1.061__250m_16_days_NDVI_doy2005193.aid0002.tif  

**where:**  

    <ProductShortName> .......... MOD13Q1  
    <Version> ................... 061  
    <LayerName> ................. _250m_16_days_NDVI  
    <Year> ...................... 2005  
    <JulianDate> ................ 193  
    <AppEEARSFeatureID> ......... aid0002  
    <FileFormat> ................ tif

The AppEEARS Feature ID is assigned automatically by the system.  

## 5. Data Quality  

When available, AppEEARS extracts and returns quality assurance (QA) data for each data file returned regardless of whether the user requests it. This is done to ensure that the user possesses the information needed to determine the usability and usefulness of the data they get from AppEEARS. Most data products available through AppEEARS have an associated QA data layer. Some products have more than one QA data layer to consult. See below for more information regarding data collections/products and their associated QA data layers.  

### 5.1. MODIS (Terra, Aqua, & Combined)  

All MODIS land products, as well as the MODIS Snow Cover Daily product, include quality assurance (QA) information designed to help users understand and make best use of the data that comprise each product.  

- See the MODIS Land Products QA Tutorials: <https://lpdaac.usgs.gov/resources/e-learning/> for more QA information regarding each MODIS land product suite.
- See the MODIS Snow Cover Daily product user guide for information regarding QA utilization and interpretation.

### 5.2. NASA MEaSUREs SRTM v3 (30m & 90m)  

SRTM v3 products are accompanied by an ancillary "NUM" file in place of the QA/QC files. The "NUM" files indicate the source of each SRTM pixel, as well as the number of input data scenes used to generate the SRTM v3 data for that pixel.  

- See the user guide: <https://lpdaac.usgs.gov/documents/179/SRTM_User_Guide_V3.pdf> for additional information regarding the SRTM "NUM" file.

### 5.3. GPW v4.11  

The GPW `Population Count`, `Population Density`, and `Basic Demographic Characteristics` data layers are accompanied by `Data Quality Indicators` datasets. The `Data Quality Indicators` were created to provide context for the population count and density grids, and to provide explicit information on the spatial precision of the input boundary data. The data context grid (data-context1) explains pixels with "0" population estimate in the population count and density grids, based on information included in the census documents. The mean administrative unit area grid (mean-admin-area2) measures the mean input unit size in square kilometers. It provides a quantitative surface that indicates the size of the input unit(s) from which the population count and density grids were created.  

### 5.4. S-NPP NASA VIIRS  

All S-NPP NASA VIIRS land products include quality information designed to help users understand and make best use of the data that comprise each product. For product-specific information, see the link to the S-NPP VIIRS products table provided in section 6.  

**NOTE:**  

- The S-NPP NASA VIIRS Surface Reflectance data products VNP09A1 and VNP09H1 contain two quality layers: `SurfReflect_State` and `SurfReflect_QC`. Both quality layers are provided to the user with the request results. Due to changes implemented on August 21, 2017 for forward processed data, there are differences in values for the `SurfReflect_QC` layer in VNP09A1 and `SurfReflect_QC_500m` in VNP09H1.  
- Refer to the S-NPP NASA VIIRS Surface Reflectance User's Guide Version 1.1: <https://lpdaac.usgs.gov/documents/123/VNP09_User_Guide_V1.1.pdf> for information on how to decode the `SurfReflect_QC` quality layer for data processed before August 21, 2017. For data processed on or after August 21, 2017, refer to the S-NPP NASA VIIRS Surface Reflectance User's guide Version 1.6: <https://lpdaac.usgs.gov/documents/124/VNP09_User_Guide_V1.6.pdf>.  

### 5.5. SMAP  

SMAP products provide multiple means to assess quality. Each data product contains bit flags, uncertainty measures, and file-level metadata that provide quality information. Results downloaded from AppEEARS and/or data directly requested via middleware services contain not only the requested pixel/data values, but also the decoded bit flag information associated with each pixel/data value extracted. For additional information regarding the specific bit flags, uncertainty measures, and file-level metadata contained in this product, refer to the Quality Assessment section of the user guide for the specific SMAP data product in your request: <https://nsidc.org/data/smap/smap-data.html>.  

### 5.6. Daymet v4R1

Daymet station-level daily weather observation data and the corresponding Daymet model predicted data for three Daymet model parameters: minimum temperature (tmin), maximum temperature (tmax), and daily total precipitation (prcp) are available. These data provide information into the regional accuracy of the Daymet model for the three station-level input parameters. Corresponding comma separated value (.csv) files that contain metadata for every surface weather station for the variable-year combinations are also available. <https://doi.org/10.3334/ORNLDAAC/2129>

### 5.7.1. ECOSTRESS Swath V1 and V2  

V1: Quality information varies by product for the ECOSTRESS product suite. Quality information for ECO2LSTE.001, including the bit definition index for the quality layer, is provided in section 2.4 of the User Guide: <https://lpdaac.usgs.gov/documents/423/ECO2_User_Guide_V1.pdf>. Results downloaded from AppEEARS contain the requested pixel/data values and also the decoded QA information associated with each pixel/data value extracted. No quality flags are produced for the ECO3ETPTJPL.001, ECO4WUE.001, or ECO4ESIPTJPL.001 products. Instead, the quality flags of the source data are available in the ECO3ANCQA.001 data product and a cloud mask is available in the ECO2CLD.001 product. The `ETinst` layer in the ECO3ETPTJPL.001 product does include an associated uncertainty layer that is provided with each request for ‘ETinst’ in AppEEARS. Each radiance layer in the ECO1BMAPRAD.001 product has a linked quality layer (Data Quality Indicators). ECO2CLD.001 and ECO3ANCQA.001 are separate quality products that are also available for download in AppEEARS.

V2: Quality information varies by product for the ECOSTRESS product suite. Quality information for ECO_L2_LSTE.002, including the bit definition index for the quality layer, is provided in section 2.4 of the User Guide: <https://lpdaac.usgs.gov/documents/423/ECO2_User_Guide_V2.pdf>. Results downloaded from AppEEARS contain requested pixel/data values and decoded QA information associated with each pixel/data value extracted. For each Land Surface Temperature and Emissivity product, the quality flags of the source data are available in the ECO_L2_LSTE.002 data product and a cloud mask is available in the ECO_L2_CLOUD.002 product.  

### 5.7.2. ECOSTRESS Tiled V2  

Quality information varies by product for the ECOSTRESS product suite. Quality information for ECO_L2T_LSTE.002, including the bit definition index for the quality layer, is provided in section 2.4 of the User Guide: <https://lpdaac.usgs.gov/documents/423/ECO2_User_Guide_V2.pdf>. Results downloaded from AppEEARS contain requested pixel/data values and decoded QA information associated with each pixel/data value extracted. For each Land Surface Temperature and Emissivity product, the quality flags of the source data are available as a separate science dataset (SDS) layer in the ECO_L2T_LSTE.002 collection, and a separate cloud and water mask layers are also included.  

### 5.8. ASTER GDEM v3 and Global Water Bodies Database v1  

ASTER GDEM v3 data are accompanied by an ancillary "NUM" file in place of the QA/QC files. The "NUM" files refer to the count of ASTER Level-1A scenes that were processed for each pixel or the source of reference data used to replace anomalies. The ASTER Global Water Bodies Database v1 products do not contain QA/QC files.  

- See Section 7 of the ASTER GDEM user guide: <https://lpdaac.usgs.gov/documents/434/ASTGTM_User_Guide_V3.pdf> for additional information regarding the GDEM "NUM" file.  
- See Section 7 of the ASTER Global Water Bodies Database user guide: <https://lpdaac.usgs.gov/documents/436/ASTWBD_User_Guide_V1.pdf> for a comparison with the SRTM Water Body Dataset.

### 5.9. NASA MEaSUREs NASADEM v1 (30m)  

NASADEM v1 products are accompanied by an ancillary "NUM" file in place of the QA/QC files. The "NUM" files indicate the source of each NASADEM pixel, as well as the number of input data scenes used to generate the NASADEM v1 data for that pixel.  

- See the NASADEM user guide: <https://lpdaac.usgs.gov/documents/592/NASADEM_User_Guide_V1.pdf> for additional information regarding the NASADEM "NUM" file.  

### 5.10. HLS v2.0  

HLS v2.0 Operational Land Imager (OLI) Surface Reflectance and TOA Brightness Daily Global 30m (HLSL30 v002) and Sentinel-2 Multi-spectral Instrument (MSI) Surface Reflectance Daily Global 30m (HLSS30 v002) products have a quality assessment layer enabling per-pixel masking of cloud, cloud shadow, snow, water, and aerosol optical thickness levels. Quality information for HLSL30 v002 and HLSS30 v002 products, including bit definitions for the quality layer can be found in section 6.4 of the User Guide: <https://lpdaac.usgs.gov/documents/1326/HLS_User_Guide_V2.pdf>.  

### 5.11. Landsat Collection 2 ARD

Landsat C2 U.S. Analysis Ready Data (ARD) products are available for conterminuous United States (CONUS)(1982-Present), Alaska (1984-present), and Hawaii (1989-1993, 1999-present). These data are products of Landsat 8/9 Operational Land Imager 2 (OLI-2) / Thermal Infrared Sensor 2 (TIRS-2), Landsat 7 Enhanceted Themattic Mapper Plus (ETM+) and Landsat 4-5 Thematic Mapper (TM). The ARD significantly reduces the magnitude of data processing for application scientiests. These data contain a pixel quality assessment derived from Fmask version 3.3.1, Aerosol and Cloud QA derived from atmospheric compensation algorithms, and radiometric saturation QA derived from detector's input signal level. More details can be found in the Landsat Collection 2 U.S. ARD DFCB: <https://d9-wret.s3.us-west-2.amazonaws.com/assets/palladium/production/s3fs-public/media/files/LSDS-1435%20Landsat%20C2%20US%20ARD%20Data%20Format%20Control%20Book-v3.pdf>

### 5.12. US NPS Water Balance

The US NPS Historical Water Balance products do not have associated QA files or layers.

## 6. Data Caveats  

### 6.1.1. ECOSTRESS Swath V1 and V2  

- ECOSTRESS Swath data products are natively stored in swath format. To fulfill AppEEARS requests for ECOSTRESS Swath products, the data are first resampled from the native swath format to a georeferenced output. This requires the use of the requested ECOSTRESS product files and the corresponding ECO1BGEO: <https://doi.org/10.5067/ECOSTRESS/ECO1BGEO.001> files for all ECOSTRESS Swath products. To do this conversion, an index array and distance array are created, then the nearest area pixel is located. Next, the Euclidean distance to that area pixel plus all surrounding pixels is measured within a 210 meter search radius (+/- a 3 pixels). This results in 49 pixels measured for every swath pixel. If the distance measured is less than what's currently present in any distance array, then the new distance as well as the swath index value are recorded into the index array used to convert to an area output.  

### 6.1.2. ECOSTRESS Tiled V2  

- ECOSTRESS Tiled data products are stored as cloud optimized geotiffs tiled based on the Military Grid Reference System (MGRS) to standardize data for ease of use in time-series analyses. The tiles are delivered in a Universal Transverse Mercator (UTM) projection. More detail can be found in the User Guide: <https://lpdaac.usgs.gov/documents/423/ECO2_User_Guide_V2.pdf>.  
- Multiple ECOSTRESS v2 Tiled granules can exist per day for the same tile as a result of the ISS orbit. Since variables like surface temperature are highly time-dependent, tiles are only merged if they fall within the same UTM zone and have the same timestamp (both tiles are from the same orbit and scene). Merging is done using the `merge` function from the `rasterio` Python package.  
- It is not uncommon for many pixels returned to contain NaN values. If any layer requested or the QC layer contains valid data, the remaining requested layers will be returned even if only NaN values are present.  

### 6.2. S-NPP VIIRS Land Surface Phenology Product (VNP22Q2.001)  

- A subset of the science datasets/variables for VNP22Q2.001 are returned in their raw, unscaled form. That is, these variables are returned without having their scale factor and offset applied. AppEEARS visualizations and output summary files are derived using the raw data value, and consequently do not characterize the intended information ("day of year") for the impacted variables. The variables returned in this state include:  

    1. Date_Mid_Greenup_Phase (Cycle 1 and Cycle 2)  
    2. Date_Mid_Senescence_Phase (Cycle 1 and Cycle 2)  
    3. Onset_Greenness_Increase (Cycle 1 and Cycle 2)  
    4. Onset_Greenness_Decrease (Cycle 1 and Cycle 2)  
    5. Onset_Greenness_Maximum (Cycle 1 and Cycle 2)  
    6. Onset_Greenness_Minimum (Cycle 1 and Cycle 2)  

- To convert the raw data to "day of year" (doy) for the above variables, use the following equation:  

      doy = Raw_Data_Value * 1 – (Given_Year - 2000) * 366

### 6.3. SMAP Enhanced L3 Radiometer Global and Polar Grid Daily 9 km EASE-Grid Soil Moisture (SPL3SMP_E) Version 5  

- The Version 5 release of SPL3SMP_E includes additional layers for AM and PM north-polar grid soil moisture retrievals. These additional layers are not supported in AppEEARS.

### 6.4. HLS v2.0  

- HLS has adopted a gridded tiling system based on the Military Grid Reference System (MGRS) to standardize data for ease of use in time-series analyses. The tiles are delivered in a Universal Transverse Mercator (UTM) projection. More detail can be found in the User Guide: <https://lpdaac.usgs.gov/documents/1326/HLS_User_Guide_V2.pdf>.
- Scenes are merged using the `merge` function from the `rasterio` Python package if they fall within the same UTM zone.  
- When requesting HLS timeseries, note that Sentinel-2 launched after Landsat was already active. Landsat OLI (HLSL30 v002) products are available from 2013-04-11 to present, while Sentinel-2 MSI products (HLSS30 v002) are available from  2015-11-30 to present.  
- Extra granules from outside the region of interest specified may appear in the granule list if the region of interest is close to an area where MGRS tiles overlap.  

### 6.5 GPW v4.11  

- AppEEARS only provides access to GPW v4.11 Basic Demographic Characteristics estimates of population counts by age and sex for the year 2010. Estimates of population density by age and sex are not returned.  

### 6.6 GEOLST4KHR v002

- The NASA Making Earth System Data Records for Use in Research Environments (MEaSUREs) GEOLST4KHR version 2 data product are natively stored in swath format. Similar to ECOSTRESS Swath data, GEOLST4KHR data are first resampled from the native swath format to a georectified output. This nearest-neighbor resampling process will result in accuracy lost. To do this conversion, an index array and distance array are created, then the nearest area pixel is located. Next, the spherical distance to that area pixel plus all surrounding pixels is measured within a 12 kilometer search radius (+/- 3 to 21 pixels). The pixel search radius is dynamic based on current swath observation latitude. If the distance measured is less than what's currently present in any distance array, then the new distance as well as the swath index value are recorded into the index array used to convert to an area output.

- GEOLST4KHR version 2 data product does not have any associated quality layer.

## 7. Documentation  

The documentation for AppEEARS can be found at <https://appeears.earthdatacloud.nasa.gov/help>.  

Documentation for data products available through AppEEARS are listed below.  

### 7.1. MODIS Land Products(Terra, Aqua, & Combined)  

- <https://lpdaac.usgs.gov/product_search/?collections=Combined+MODIS&collections=Terra+MODIS&collections=Aqua+MODIS&view=list>  

### 7.2. MODIS Snow Products (Terra and Aqua)  

- <https://nsidc.org/data/modis/data_summaries>  

### 7.3. NASA MEaSUREs SRTM v3  

- <https://lpdaac.usgs.gov/product_search/?collections=MEaSUREs+SRTM&view=list>  

### 7.4. GPW v4.11  

- <https://sedac.ciesin.columbia.edu/data/collection/gpw-v4>  
- <https://sedac.ciesin.columbia.edu/binaries/web/sedac/collections/gpw-v4/gpw-v4-documentation-rev11.pdf>  

### 7.5. S-NPP NASA VIIRS Land Products  

- <https://lpdaac.usgs.gov/product_search/?collections=S-NPP+VIIRS&view=list>  

### 7.6. SMAP Products  

- <http://nsidc.org/data/smap/smap-data.html>  

### 7.7. Daymet v4R1

- <https://doi.org/10.3334/ORNLDAAC/2129>
- <https://daymet.ornl.gov/>

### 7.8. ECOSTRESS  

- <https://lpdaac.usgs.gov/product_search/?collections=ECOSTRESS&view=list>  

### 7.9. ASTER GDEM v3 and Global Water Bodies Database v1  

- <https://doi.org/10.5067/ASTER/ASTGTM.003>  
- <https://doi.org/10.5067/ASTER/ASTWBD.001>  

### 7.10. NASADEM v1  

- <https://doi.org/10.5067/MEaSUREs/NASADEM/NASADEM_NC.001>  
- <https://doi.org/10.5067/MEaSUREs/NASADEM/NASADEM_NUMNC.001>

### 7.11. HLS v2.0  

- <https://lpdaac.usgs.gov/product_search/?collections=HLS&view=list>  
- <https://doi.org/10.5067/HLS/HLSL30.002>  
- <https://doi.org/10.5067/HLS/HLSS30.002>

### 7.12. GEOLST4KHR v002

- <https://doi.org/10.5067/MEaSUREs/LSTE/GEOLST4KHR.002>

### 7.12. Landsat ARD

- <https://doi.org/10.5066/P960F8OC>

### 7.13. US NPS Water Balance

- [User Guide](https://screenedcleanedsummaries.s3.us-west-2.amazonaws.com/Gridded_Water_Balance_Model_April_2021.pdf)

## 8. Sample Request Retention  

AppEEARS sample request outputs are available to download for a limited amount of time after completion. Please visit <https://appeears.earthdatacloud.nasa.gov/help?section=sample-retention> for details.  

## 9. Data Product Citations  

- Schaaf, C., Wang, Z. (2021). MODIS/Terra+Aqua BRDF/Albedo Nadir BRDF Adjusted Ref Daily L3 Global - 500m V061. NASA EOSDIS Land Processes Distributed Active Archive Center. Accessed 2023-12-28 from https://doi.org/10.5067/MODIS/MCD43A4.061. Accessed December 28, 2023.

## 10. Software Citation  

AppEEARS Team. (2023). Application for Extracting and Exploring Analysis Ready Samples (AppEEARS). Ver. 3.41. NASA EOSDIS Land Processes Distributed Active Archive Center (LP DAAC), USGS/Earth Resources Observation and Science (EROS) Center, Sioux Falls, South Dakota, USA. Accessed December 28, 2023. https://appeears.earthdatacloud.nasa.gov

## 11. Feedback  

We value your opinion. Please help us identify what works, what doesn't, and anything we can do to make AppEEARS better by submitting your feedback at <https://appeears.earthdatacloud.nasa.gov/feedback> or to LP DAAC User Services at <https://lpdaac.usgs.gov/lpdaac-contact-us/>.  
