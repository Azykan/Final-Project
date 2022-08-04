# What makes a song popular?

![Music back round Best](https://user-images.githubusercontent.com/97486216/180366857-01c76bba-445e-469f-b123-70bef6e8782e.jpg)

Hundreds of thousands of artists have been creating music to reach the Top 20 in their genres. The likelihood of success for any song to reach the Top 20 is low, so we plan to analyze Spotify's fan-based song streaming data to analyze streaming trends. 

> [The rise of music streaming services] fundamentally changed how music is valued. Instead of sales, the emphasis was on repeated listens and getting a song on a popular playlist or radio station. The music industry shunned the new platforms at the start, with several artists blocking Spotify and Pandora from using their material. <sup>[5](#top-streaming-apps)</sup>

We chose to use Spotify as the data source because it is the most popular music streaming platform in the world, with over 350 million users and 150 million subscribers. <sup>[5](#top-streaming-apps)</sup>

Fan-based song popularity is a better measure of popularity than music awards. Music awards, such as the Grammys, and Music Charts, such as Billboard, are flawed for a number of reasons.

## Grammy Awards 	<sup>[1](#grammy-awards-link)</sup>
- Songs must be nominated by members of the National Academy of Recording Arts and Sciences (NARAS) for consideration in the awards
- Nominated songs are then reviewed by 150 recording industry experts for eligibility
- Songs that make it through the vetting process are put up for a vote by voting members
- Academy members are required to vote solely based upon quality, without consideration for sales, chart performance, personal friendships, regional preferences, or company loyalty
- Skewed towards artists with established record labels

## Billboard Charts <sup>[2](#billboard-charts-link)</sup>
- Largely based on BDS and Soundscan, which tracks airplay (from broadcast radio) on monitored radio stations, using number of plays x total audience of each station
- Songs moving down the chart will be removed automatically after 26 weeks
- Record label-sponsored spin programs manipulated the charts
- Skewed towards artists with established record labels

## MRC Data/Nielsen Soundscan <sup>[3](#mrc-link)</sup>
- Based on Point-of-sale album purchases
- Does not include digital streams
- Not all retailers participate in the SoundScan program, so total CD sales are projected from the collected data using weighting

Music is the combination of rhythm and harmony that creates melodies and songs.
It goes beyond the range of time, space, and cultures. Throughout the years, music has evolved and transformed helping to create various genres of songs, which are combinations of melodies and lyrics. 

From electric guitars to auto-tunes, songs have been through some massive transformations. Therefore, we have selected this topic to analyze how songs have evolved, for better or worse, throughout the years. We want to create a data frame that can project the genre(s) which have been consistently to be on the top.

## What problems our analysis solves

Spotify API data includes streaming statistics for all streamed songs. Each of the traditional chart platforms is skewed by opinion, money, or bad/incomplete data.

Although Spotify is only one of many streaming music services globally, it is a better representation of fan-based popularity than the traditional platforms used to build charts.


# Questions we are looking to answer 

1. Which genres have been consistently on the top according to number of streams?
2. Which artists are the most popular, by genre, according to number of streams?
3. How long have the genres and artists been at the top of the charts?
4. Which songs that haven't been in the Top 20 are likely to make it to the Top 20 based on their attributes, compared to attributes of past Top 20 songs?


# Data

We needed the following data to answer these questions
- Artist Name
- Track Name
- Genre
- Number of Streams
- Week
- Breakdown of top songs vs non-top songs
- Song attributes such as tempo, danceability, volume, etc.


## Data Sources

We are using the Spotify Web API(https://developer.spotify.com/documentation/web-api/quick-start/) for Top 200 Fan-Based Global Weekly Songs as the data source for this project.

This is Spotify’s user-facing Top 200 Weekly Chart:
https://charts.spotify.com/charts/overview/global 

### Data Exploration/Analysis

We explored the raw data using a combination of Python and Tableau looking for data inconsistencies, missing data, and irrelevant data. We built an exploratory dashboard to get a baseline understanding of the data we had collected.

### ETL Flow Chart
![Flowchart Template - Main Frame](https://user-images.githubusercontent.com/97486216/180625518-b455c657-8762-4bd9-8033-e78cecdcbbaf.jpg)

### Database
   - For our project, we are using Amazon's AWS Postgres RDS service.
        - We plan to use this web service to best share our data when going through and performing our machine learning models.  This will also help with any other transformations we may implement during our analysis.
   - See the below images for screenshots of the successfully created database and the ability to connect to said database.

#### Creation of Database server
![This is an Image](https://github.com/Azykan/Final-Project/blob/main/Resources/AWS_database_view.png)

#### Data in Database
![This is an Image](https://github.com/Azykan/Final-Project/blob/main/Resources/AWS_database_2.png)

#### ERD
![QuickDBD_ERD_export](https://github.com/Azykan/Final-Project/blob/main/Resources/QuickDBD-export-2.png)

## Data Visualization

Data Visualization in Tableau
https://public.tableau.com/app/profile/angela.zykan/viz/FinalProjectv1_16588877562730/RaceChartbyArtist

![Race Chart by Artist](https://user-images.githubusercontent.com/97486216/182058364-da05ea76-b37b-4bcd-afe2-ec65baabf1dc.png)

## Machine Learning

Through the various graphs listed below, we can see how different attributes can impact the chances of a song being a hit.
For example:
### Tempo

![tempo](https://user-images.githubusercontent.com/100887673/182881111-636aff1b-bd83-4622-885d-12a2916a7199.png)

According to the graph, we can assume that most songs that are between 90 to 105 beats per second have a higher chances of being a hit. We can also see that there are some songs in the range of 110 to 125 & 135 to 145 beats pers second that have a probability of being a hit. 

### Danceability

![danceability](https://user-images.githubusercontent.com/100887673/182881180-8026834f-96bd-4b40-9432-d39e33b30d31.png)

Refering to danceability attribute of a song, we can observe that the songs that have a danceable music has more chances of being a hit.

### Key

![key](https://user-images.githubusercontent.com/100887673/182881285-8e7ce55a-92d2-4033-9467-174f86f5926c.png)

In this graph, if we reference it with pitch class notation system, we can assume that the songs that use C,D, & E notes often tend to be hits.

### Valence

![valence](https://user-images.githubusercontent.com/100887673/182881590-1df1bc3c-c124-4f40-b564-778d774ff39a.png)

Musical positiveness conveyed by a track is known as valence. Tracks with high valence sound more positive (e.g. happy, cheerful, euphoric), while tracks with low valence sound more negative (e.g. sad, depressed, angry). So, according to the graph, it can be said that positive sounding songs tend to hits more than songs with negativity.

### Loudness

![loudness](https://user-images.githubusercontent.com/100887673/182881628-429cc34d-7c42-4bd1-906c-770b843b8695.png)

Referencing the graph, presumably songs with decibel level somewhere between -2.5 to -7.5 seem to top the charts more.

### Duration (MS)

![duration](https://user-images.githubusercontent.com/100887673/182881687-eeb4526c-8597-4bdb-a95b-d2df58c21b1c.png)

Songs with duration between 150000 ms to 250000 ms tends to be hits more that the ones with longer durations. So, basically no more extended guitar solos.

### Energy

![energy](https://user-images.githubusercontent.com/100887673/182881743-1c5f8968-df39-4314-8573-6317ec84983e.png)

Songs with energy level that fall in the spectrum between 0.5 to 0.8 seem to be more hits that compared to the songs at the other ends of the graph.

### Acousticness

![acousticness](https://user-images.githubusercontent.com/100887673/182882690-8a85f395-c42f-4cc9-8ae9-011c1c6457c9.png)

Songs that have a lower level of acousticness seem to place themselves favorably in the charts.

## Design Tree

![tree_high_dpi](https://user-images.githubusercontent.com/100887673/182882187-7d0c0d7c-7e80-485d-b283-7ac0c6b47afe.png)

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
