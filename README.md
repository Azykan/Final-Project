# Top Streamed Songs from Hundreds of Millions of fans, globally. 

![Music back round Best](https://user-images.githubusercontent.com/97486216/180366857-01c76bba-445e-469f-b123-70bef6e8782e.jpg)

Music is the combination of rhythm and harmony that creates melodies and songs.
It goes beyond the range of time, space, and cultures. Throughout the years, music has evolved and transformed helping to create various genres of songs, which are combinations of melodies and lyrics. 

From electric guitars to auto-tunes, songs have been through some massive transformations. Therefore, we have selected this topic to analyze how songs have evolved, for better or worse, throughout the years. We want to create a data frame that can project the genre(s) which have been consistently to be on the top.

We are also trying to get the answers to the questions, such as, 

1. Which genre (album or singles) has been consistently on the top?
2. Which artist has the highest number of streams?
3. How long has the song been at the top?

## Source Data
Below are the sources that we will be using to answer the questions stated above.

https://charts.spotify.com/charts/overview/global 

### Flow Chart
![Flowchart Template - Main Frame](https://user-images.githubusercontent.com/97486216/180625518-b455c657-8762-4bd9-8033-e78cecdcbbaf.jpg)

### Database
   - For our project we are using Amazon's AWS RDS service.
        - We plan to use this webservice to best share our data when going through and performing our machine learning models.  This will also help with any other transformations we may implement during our analysis.
   - See below images for screenshots of the sucessfully created database and the ability to conect to said database.

![This is an Image](https://github.com/Azykan/Final-Project/blob/main/Resources/AWS_database_view.png)

<<<<<<< Updated upstream
![This is an Image](https://github.com/Azykan/Final-Project/blob/main/Resources/AWS_database.png)
=======
#### Data in Database
![This is an Image](https://github.com/Azykan/Final-Project/blob/main/Resources/AWS_database_2.png)

#### ERD
![QuickDBD_ERD_export](https://github.com/Azykan/Final-Project/blob/main/Resources/QuickDBD-export-2.png)

## Data Visualization

Data Visualization in Tableau
https://public.tableau.com/app/profile/angela.zykan/viz/FinalProjectv1_16588877562730/RaceChartbyArtist

![Race Chart by Artist](https://user-images.githubusercontent.com/97486216/182058364-da05ea76-b37b-4bcd-afe2-ec65baabf1dc.png)

## Machine Learning

The Machine Learning model will predict if a song that hasn't yet been in the Top 20 is likely to make it to the Top 20 based on its attributes, compared to attributes of past Top 20 songs.

### Preprocessing

The training dataset will include the Top 20 songs from each week since 2018, including number of streams and song metadata, and the bottom 180 songs from each week will be compared on metadata similarity to the Top 20.

## Data Cleansing
- Replaced non-English characters with English variants
- Used the following Regex to create valid JSON from Python API logs "features retrieved in \d{1}.{1}\d{2} seconds$"

![image](https://user-images.githubusercontent.com/97486216/182278333-0298b1c3-2980-4a57-a3ca-39d6ff56d050.png)


## Caveats

- Only using a single streaming platform as a data source
- Only looking at 5 years of data
- Limited to the Weekly Top 200 songs from Spotify (API limitation)
- Genre is wrapped with a Python package called Spotipy
- Artists’ Names had special characters which had to be handled in Python
- Song genres are not available
- Artist genres are passed as an array, with multiple genres per artist



## Communication
The team is communicating through Slack and using Zoom and Google Meet for peer coding and live collaboration.

## Technology and Methodology
- Python
- Google Colab
- AWS RDS (Postgres)
- Github (Code Repo and hosting in GitHub Pages)
- Azure DevOps (for project management)
- Tableau (for presentation)
- Miro (for diagramming)
- Google Slides (for presentation)


## References
#### Google Slides Presentation
https://docs.google.com/presentation/d/17nqJ9vrqAgnOYUN2oFVwoUGJvRV1aU0XoI_XK6x1OgA

#### Grammy Awards Link
https://en.wikipedia.org/wiki/Grammy_Awards#Entry_process_and_selection_of_nominees
#### Billboard Charts Link
https://billboardchartrewind.wordpress.com/2018/10/19/hot-country-singles-the-first-chart-to-incorporate-modern-bds-tracking/
#### MRC Link
https://en.wikipedia.org/wiki/MRC_Data
#### Top Streaming Apps
https://www.businessofapps.com/data/music-streaming-market/
>>>>>>> Stashed changes
