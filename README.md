# What makes a song popular?

![Music back round Best](https://user-images.githubusercontent.com/97486216/180366857-01c76bba-445e-469f-b123-70bef6e8782e.jpg)

Hundreds of thousands of artists have been creating music to reach the Top 20 in their genres. The likelyhood of success for any song to reach the Top 20 is low, so we plan to analyze Spotify's fan-based song streaming data to analyze streaming trends. 

> [The rise of music streaming services] fundamentally changed how music is valued. Instead of sales, the emphasis was on repeated listens and getting a song in a popular playlist or radio station. The music industry shunned the new platforms at the start, with several artists blocking Spotify and Pandora from using their material. <sup>[5](#top-streaming-apps)</sup>

We chose to use Spotify as the data source because it is the most popular music streaming platform in the world, with over 350 million users and 150 million subscribers. <sup>[5](#top-streaming-apps)</sup>

Fan-based song popularity is a better measure of popularity than music awards. Music awards, such as the Grammys, and Music Charts, such as Billboard, flawed for a number of reasons.

## Grammy Awards 	<sup>[1](#grammy-awards-link)</sup>
- Songs must be nominated by members of the National Academy of Recording Arts and Sciences (NARAS) for consideration into the awards
- Nominated songs are then reviewed by 150 recording industry experts for eligibility
- Songs which make it through the vetting process are put up for a vote to voting members
- Academy members are required to vote solely based upon quality, without consideration for sales, chart performance, personal friendships, regional preferences or company loyalty
- Skewed towards artits with established record labels

## Billboard Charts <sup>[2](#billboard-charts-link)</sup>
- Largely based on BDS and Soundscan, which tracks airplay (from broadcast radio) on monitored radio stations, using number of plays x total audience of each station
- Songs moving down the chart will be removed automatically after 26 weeks
- Record label-sponsored spin programs manipulated the charts
- Skewed towards artits with established record labels

## MRC Data/Nielsen Soundscan <sup>[3](#mrc-link)</sup>
- Based on Point-of-sale album purchases
- Does not include digital streams
- Not all retailers participate in the SoundScan program, so total CD sales are projected from the collected data using weighting

Music is the combination of rhythm and harmony that creates melodies and songs.
It goes beyond the range of time, space, and cultures. Throughout the years, music has evolved and transformed helping to create various genres of songs, which are combinations of melodies and lyrics. 

From electric guitars to auto-tunes, songs have been through some massive transformations. Therefore, we have selected this topic to analyze how songs have evolved, for better or worse, throughout the years. We want to create a data frame that can project the genre(s) which have been consistently to be on the top.

## What problems our analysis solves

Spotify API data includes streaming statistics for all streamed songs. Each of the traditional chart platforms are skewed by opinion, money, or bad/incomplete data.

Although Spotify is only one of many streaming music services globally, it is a better represenation of fan-based popularity than the traditional platforms used to build charts.


# Questions we are looking to answer 

1. Which genres have been consistently on the top according to number of streams?
2. Which artists are the popular, by genre, according to number of streams?
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

This is spotify's user-facing Top 200 Weekly Chart:
https://charts.spotify.com/charts/overview/global 

### ETL Flow Chart
![Flowchart Template - Main Frame](https://user-images.githubusercontent.com/97486216/180625518-b455c657-8762-4bd9-8033-e78cecdcbbaf.jpg)

### Database
   - For our project we are using Amazon's AWS RDS service.
        - We plan to use this webservice to best share our data when going through and performing our machine learning models.  This will also help with any other transformations we may implement during our analysis.
   - See below images for screenshots of the sucessfully created database and the ability to conect to said database.

#### Creation of Database server
![This is an Image](https://github.com/Azykan/Final-Project/blob/main/Resources/AWS_database_view.png)

#### Data in Database
![This is an Image](https://github.com/Azykan/Final-Project/blob/main/Resources/AWS_database.png)

#### ERD
![QuickDBD_ERD_export](https://user-images.githubusercontent.com/97486216/182056600-94153e73-ba97-4528-85be-7a390ee18556.png)

## Data Visulization

Data Visualization in Tableau

![Race Chart by Artist](https://user-images.githubusercontent.com/97486216/182058364-da05ea76-b37b-4bcd-afe2-ec65baabf1dc.png)

## Machine Learning

The Machine Learning model will predict if a song that hasn't yet been in the Top 20 is likely to make it to the Top 20 based on it's attributes, compared to attributes of past Top 20 songs.

### Preprocessing

The training dataset will include the Top 20 songs from each week since 2018, including number of streams and song metadata, and the bottom 180 songs from each week will be compared on metadata similarity to the Top 20.


## Caveats

- Only using a single streaming platform as a data source
- Only looking at 5 years of data
- Limited to the Weekly Top 200 songs from Spotify (API limitation)
- Genre is wrapped with a Python package called Spotipy
- Artists Names had special characters which had to handled in Python
- Song genres are not available
- Artist genres are passed as an array, with multiple genres per artist

## Communication
The team is communicating through Slack and using Zoom and Google Meet for peer coding and live collaboration.

# Technology and Methodology
Python
Google Colab
AWS RDS (Postgres)
Github (Code Repo and hosting in GitHub Pages)
Azure DevOps (for project management)
Tableau (for presentation)
Miro (for diagramming)
Google Slides (for presentation)


# References
#### Grammy Awards Link
https://en.wikipedia.org/wiki/Grammy_Awards#Entry_process_and_selection_of_nominees
#### Billboard Charts Link
https://billboardchartrewind.wordpress.com/2018/10/19/hot-country-singles-the-first-chart-to-incorporate-modern-bds-tracking/
#### MRC Link
https://en.wikipedia.org/wiki/MRC_Data
#### Top Streaming Apps
https://www.businessofapps.com/data/music-streaming-market/
