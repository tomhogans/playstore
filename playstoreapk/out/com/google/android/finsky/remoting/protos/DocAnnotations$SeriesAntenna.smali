.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeriesAntenna"
.end annotation


# instance fields
.field private cachedSize:I

.field private colorThemeArgb_:Ljava/lang/String;

.field private episodeSubtitle_:Ljava/lang/String;

.field private episodeTitle_:Ljava/lang/String;

.field private hasColorThemeArgb:Z

.field private hasEpisodeSubtitle:Z

.field private hasEpisodeTitle:Z

.field private hasSectionAlbums:Z

.field private hasSectionTracks:Z

.field private hasSeriesSubtitle:Z

.field private hasSeriesTitle:Z

.field private sectionAlbums_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

.field private sectionTracks_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

.field private seriesSubtitle_:Ljava/lang/String;

.field private seriesTitle_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1642
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1647
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->seriesTitle_:Ljava/lang/String;

    .line 1664
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->seriesSubtitle_:Ljava/lang/String;

    .line 1681
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->episodeTitle_:Ljava/lang/String;

    .line 1698
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->episodeSubtitle_:Ljava/lang/String;

    .line 1715
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->colorThemeArgb_:Ljava/lang/String;

    .line 1732
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->sectionTracks_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 1752
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->sectionAlbums_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 1811
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->cachedSize:I

    .line 1642
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1814
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->cachedSize:I

    if-gez v0, :cond_7

    .line 1816
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSerializedSize()I

    .line 1818
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->cachedSize:I

    return v0
.end method

.method public getColorThemeArgb()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->colorThemeArgb_:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeSubtitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->episodeSubtitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->episodeTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionAlbums()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .registers 2

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->sectionAlbums_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    return-object v0
.end method

.method public getSectionTracks()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .registers 2

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->sectionTracks_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 1823
    const/4 v0, 0x0

    .line 1824
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSeriesTitle()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1825
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSeriesTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1828
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSeriesSubtitle()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1829
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSeriesSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1832
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasEpisodeTitle()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1833
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1836
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasEpisodeSubtitle()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1837
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getEpisodeSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1840
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasColorThemeArgb()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1841
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1844
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSectionTracks()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1845
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSectionTracks()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1848
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSectionAlbums()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1849
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSectionAlbums()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1852
    :cond_71
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->cachedSize:I

    .line 1853
    return v0
.end method

.method public getSeriesSubtitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->seriesSubtitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getSeriesTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->seriesTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public hasColorThemeArgb()Z
    .registers 2

    .prologue
    .line 1717
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasColorThemeArgb:Z

    return v0
.end method

.method public hasEpisodeSubtitle()Z
    .registers 2

    .prologue
    .line 1700
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasEpisodeSubtitle:Z

    return v0
.end method

.method public hasEpisodeTitle()Z
    .registers 2

    .prologue
    .line 1683
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasEpisodeTitle:Z

    return v0
.end method

.method public hasSectionAlbums()Z
    .registers 2

    .prologue
    .line 1753
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSectionAlbums:Z

    return v0
.end method

.method public hasSectionTracks()Z
    .registers 2

    .prologue
    .line 1733
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSectionTracks:Z

    return v0
.end method

.method public hasSeriesSubtitle()Z
    .registers 2

    .prologue
    .line 1666
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSeriesSubtitle:Z

    return v0
.end method

.method public hasSeriesTitle()Z
    .registers 2

    .prologue
    .line 1649
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSeriesTitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1861
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1862
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_4e

    .line 1866
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1867
    :sswitch_d
    return-object p0

    .line 1872
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->setSeriesTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    goto :goto_0

    .line 1876
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->setSeriesSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    goto :goto_0

    .line 1880
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->setEpisodeTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    goto :goto_0

    .line 1884
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->setEpisodeSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    goto :goto_0

    .line 1888
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->setColorThemeArgb(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    goto :goto_0

    .line 1892
    :sswitch_36
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;-><init>()V

    .line 1893
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1894
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->setSectionTracks(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    goto :goto_0

    .line 1898
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :sswitch_42
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;-><init>()V

    .line 1899
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1900
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->setSectionAlbums(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    goto :goto_0

    .line 1862
    :sswitch_data_4e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_2e
        0x32 -> :sswitch_36
        0x3a -> :sswitch_42
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1639
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    move-result-object v0

    return-object v0
.end method

.method public setColorThemeArgb(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    .registers 3
    .parameter "value"

    .prologue
    .line 1719
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasColorThemeArgb:Z

    .line 1720
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->colorThemeArgb_:Ljava/lang/String;

    .line 1721
    return-object p0
.end method

.method public setEpisodeSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    .registers 3
    .parameter "value"

    .prologue
    .line 1702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasEpisodeSubtitle:Z

    .line 1703
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->episodeSubtitle_:Ljava/lang/String;

    .line 1704
    return-object p0
.end method

.method public setEpisodeTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    .registers 3
    .parameter "value"

    .prologue
    .line 1685
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasEpisodeTitle:Z

    .line 1686
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->episodeTitle_:Ljava/lang/String;

    .line 1687
    return-object p0
.end method

.method public setSectionAlbums(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    .registers 3
    .parameter "value"

    .prologue
    .line 1756
    if-nez p1, :cond_8

    .line 1757
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1759
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSectionAlbums:Z

    .line 1760
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->sectionAlbums_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 1761
    return-object p0
.end method

.method public setSectionTracks(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    .registers 3
    .parameter "value"

    .prologue
    .line 1736
    if-nez p1, :cond_8

    .line 1737
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1739
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSectionTracks:Z

    .line 1740
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->sectionTracks_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    .line 1741
    return-object p0
.end method

.method public setSeriesSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    .registers 3
    .parameter "value"

    .prologue
    .line 1668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSeriesSubtitle:Z

    .line 1669
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->seriesSubtitle_:Ljava/lang/String;

    .line 1670
    return-object p0
.end method

.method public setSeriesTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    .registers 3
    .parameter "value"

    .prologue
    .line 1651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSeriesTitle:Z

    .line 1652
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->seriesTitle_:Ljava/lang/String;

    .line 1653
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1788
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSeriesTitle()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1789
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSeriesTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1791
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSeriesSubtitle()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1792
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSeriesSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1794
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasEpisodeTitle()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1795
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1797
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasEpisodeSubtitle()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1798
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getEpisodeSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1800
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasColorThemeArgb()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1801
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1803
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSectionTracks()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1804
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSectionTracks()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1806
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->hasSectionAlbums()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1807
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSectionAlbums()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1809
    :cond_62
    return-void
.end method
