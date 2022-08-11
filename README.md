# What makes a song popular?
https://azykan.github.io/Final-Project/
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

Animated Race Chart by Artist
![Race Chart by Artist (1)](https://user-images.githubusercontent.com/97486216/183318916-787bba41-3a97-46b3-94ba-3ce5b88dd838.png)

Popular Artist by Genre with each song's attributes
![Popular Artists by Genre](https://user-images.githubusercontent.com/97486216/183318953-16ac41e6-ed35-4c7f-98f0-c693c015bfb9.png)


## Machine Learning
The data chosen was the Top 200 songs provided by Spotify, pulled from Spotipy. The dataset was not too large and contained 4291 songs.

Although much of the data was in required format, some modifications had to be performed for some columns. Notably, the dataset had a column named “rank” that was changed into “popularity” to avoid confusion.

For this project, we are trying to predict the ability of a song to be in Top 20  based purely on song metrics such as key, dancibility, acousticness, e.t.c.
After uploading my data, we wanted to see how a songs popularity correlates with its other attributes. So, we created a comparison graph for the said attributes against the popularity, which are as follow; 

![acc1](https://user-images.githubusercontent.com/100887673/183524383-920117c1-6710-4103-ad74-931d659b9cb5.png)

X= Acounsticness, Y= popularity
This shows that the songs that has low level of acousticness have high probability of being in Top 20. 

![dac 1](https://user-images.githubusercontent.com/100887673/183524615-d66db2e9-334f-4274-bb97-d15f119404c4.png)

X= Danceability, Y= popularity
This shows that songs that are between the spectrum of 0.6 to 0.9 in danceability have high probability of being in Top 20.

![vslen](https://user-images.githubusercontent.com/100887673/183524903-82b1bd1d-9226-4621-9830-8c669993c4b9.png)

X= Valence, Y= popularity
This shows that songs that have some positivity tends to be in Top 20s more than those that are very negative or extremely optimistic.

![loud](https://user-images.githubusercontent.com/100887673/183525135-09d19a10-749a-4a07-a6a0-68f2eccc9d4b.png)

X= Loudness, Y= popularity
This shows that the songs that are between -7.5 to -2.5 db are in Top 20 more that those that fall beyond this spectrum.

![dur](https://user-images.githubusercontent.com/100887673/183525170-001d5f75-c57b-4b15-975a-265069b06c17.png)

X= Duration, Y= popularity
This shows that the songs that are between 150000 ms to 250000 tends to be in Top 20 more than those with longer durations.

Likewise, below is a plot summary of all the attributes.

![multi_plots](https://user-images.githubusercontent.com/100887673/183525224-7035477d-6d40-494e-ba32-f30d12be64a4.png)

# Processing

Before creating and testing the models, one_hot code was used to assign binary codes to columns artist_names, track_name, and artist_genres.

![qcut](https://user-images.githubusercontent.com/100887673/183527722-eabd33e6-e341-4cc4-b94f-371732cb0aed.png)

Then we used qcut() function to cut the Popularity column into Qcut will separate the cut into less popular and more popular and assign binary numbers. 0 = in top 20  & 1 = outside top 20.

![one_hot](https://user-images.githubusercontent.com/100887673/183527746-ef40da35-4d5b-439e-b477-af046350555d.png)

Then we used one_hot code function and make copy of the dataframe, to prevent modifying it in place. Then we create a dummy column (pd.get_dummies()) for creating our one_hot column. Then we concacnate our data frame and the dummies on column axis. Then drop the original column that we used to create the dummies.

Then we assign the one_hot function to our astists & genre columns, that will assign them binary numbers according to their respective genres. After running the code, we will see that we have 497 columns compared to 15.

The next part is to split and scale the data. 

![split](https://user-images.githubusercontent.com/100887673/183526034-7e593b8b-9ecf-45cc-914c-9ee4010ce1dd.png)

‘y” will be what we are trying to predict, which in this case is “Popularity.” We use .loc because it creates a fresh slice of data frame, so that any changes we make to “y” here doesn’t change data in our previous data frame. Then we drop “Popularity” from the X axis.

Now we use StandardScaler() to scale X. This will scale each column in X so that it has everything in it but “Popularity” column. It scales each column to be centered with mean of 0 and to have unit variance of 1.

Then we split the set into train and test, using Sklearns’ train_test_split() function, setting the test size to 70%.
Now we create models and train them.

I chose 3 models to train in order to see if it produces any significant differences in the accuracy.
Unfortunately or fortunately, the accuracy score for all 3 data, as seen below, were very minimal.

![acc](https://user-images.githubusercontent.com/100887673/183526003-e4cd858a-0e60-438f-8c1b-cf03b4ee1ad1.png)




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
