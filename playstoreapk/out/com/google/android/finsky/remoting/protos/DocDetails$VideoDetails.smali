.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoDetails"
.end annotation


# instance fields
.field private audioLanguage_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private captionLanguage_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentRating_:Ljava/lang/String;

.field private credit_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;",
            ">;"
        }
    .end annotation
.end field

.field private dislikes_:J

.field private duration_:Ljava/lang/String;

.field private genre_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasContentRating:Z

.field private hasDislikes:Z

.field private hasDuration:Z

.field private hasLikes:Z

.field private hasReleaseDate:Z

.field private likes_:J

.field private releaseDate_:Ljava/lang/String;

.field private rentalTerm_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;",
            ">;"
        }
    .end annotation
.end field

.field private trailer_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 2396
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2400
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->credit_:Ljava/util/List;

    .line 2434
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->duration_:Ljava/lang/String;

    .line 2451
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->releaseDate_:Ljava/lang/String;

    .line 2468
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->contentRating_:Ljava/lang/String;

    .line 2485
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->likes_:J

    .line 2502
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->dislikes_:J

    .line 2518
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->genre_:Ljava/util/List;

    .line 2551
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->trailer_:Ljava/util/List;

    .line 2584
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->rentalTerm_:Ljava/util/List;

    .line 2617
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->audioLanguage_:Ljava/util/List;

    .line 2650
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->captionLanguage_:Ljava/util/List;

    .line 2745
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->cachedSize:I

    .line 2396
    return-void
.end method


# virtual methods
.method public addAudioLanguage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2634
    if-nez p1, :cond_8

    .line 2635
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2637
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->audioLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->audioLanguage_:Ljava/util/List;

    .line 2640
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->audioLanguage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2641
    return-object p0
.end method

.method public addCaptionLanguage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2667
    if-nez p1, :cond_8

    .line 2668
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2670
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->captionLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->captionLanguage_:Ljava/util/List;

    .line 2673
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->captionLanguage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2674
    return-object p0
.end method

.method public addCredit(Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2417
    if-nez p1, :cond_8

    .line 2418
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2420
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->credit_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->credit_:Ljava/util/List;

    .line 2423
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->credit_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2424
    return-object p0
.end method

.method public addGenre(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2535
    if-nez p1, :cond_8

    .line 2536
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2538
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->genre_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->genre_:Ljava/util/List;

    .line 2541
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->genre_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2542
    return-object p0
.end method

.method public addRentalTerm(Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2601
    if-nez p1, :cond_8

    .line 2602
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2604
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->rentalTerm_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->rentalTerm_:Ljava/util/List;

    .line 2607
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->rentalTerm_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2608
    return-object p0
.end method

.method public addTrailer(Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2568
    if-nez p1, :cond_8

    .line 2569
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2571
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->trailer_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->trailer_:Ljava/util/List;

    .line 2574
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->trailer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2575
    return-object p0
.end method

.method public getAudioLanguageCount()I
    .registers 2

    .prologue
    .line 2622
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->audioLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAudioLanguageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2620
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->audioLanguage_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2748
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->cachedSize:I

    if-gez v0, :cond_7

    .line 2750
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getSerializedSize()I

    .line 2752
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->cachedSize:I

    return v0
.end method

.method public getCaptionLanguageCount()I
    .registers 2

    .prologue
    .line 2655
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->captionLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCaptionLanguageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2653
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->captionLanguage_:Ljava/util/List;

    return-object v0
.end method

.method public getContentRating()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->contentRating_:Ljava/lang/String;

    return-object v0
.end method

.method public getCreditList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2403
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->credit_:Ljava/util/List;

    return-object v0
.end method

.method public getDislikes()J
    .registers 3

    .prologue
    .line 2503
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->dislikes_:J

    return-wide v0
.end method

.method public getDuration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2435
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->duration_:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2521
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->genre_:Ljava/util/List;

    return-object v0
.end method

.method public getLikes()J
    .registers 3

    .prologue
    .line 2486
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->likes_:J

    return-wide v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->releaseDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getRentalTermList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2587
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->rentalTerm_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    .line 2757
    const/4 v3, 0x0

    .line 2758
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getCreditList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;

    .line 2759
    .local v1, element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    const/4 v4, 0x1

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_9

    .line 2762
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDuration()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2763
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getDuration()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2766
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasReleaseDate()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 2767
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2770
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasContentRating()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 2771
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getContentRating()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2774
    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasLikes()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 2775
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getLikes()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2778
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDislikes()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 2779
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getDislikes()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2783
    :cond_6c
    const/4 v0, 0x0

    .line 2784
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getGenreList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_75
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2785
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_75

    .line 2788
    .end local v1           #element:Ljava/lang/String;
    :cond_87
    add-int/2addr v3, v0

    .line 2789
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getGenreList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2791
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getTrailerList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_af

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    .line 2792
    .local v1, element:Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    const/16 v4, 0x8

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_9b

    .line 2795
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    :cond_af
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getRentalTermList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;

    .line 2796
    .local v1, element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    const/16 v4, 0x9

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_b7

    .line 2800
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    :cond_cb
    const/4 v0, 0x0

    .line 2801
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getAudioLanguageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2802
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_d4

    .line 2805
    .end local v1           #element:Ljava/lang/String;
    :cond_e6
    add-int/2addr v3, v0

    .line 2806
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getAudioLanguageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2809
    const/4 v0, 0x0

    .line 2810
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getCaptionLanguageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_fb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2811
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_fb

    .line 2814
    .end local v1           #element:Ljava/lang/String;
    :cond_10d
    add-int/2addr v3, v0

    .line 2815
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getCaptionLanguageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2817
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->cachedSize:I

    .line 2818
    return v3
.end method

.method public getTrailerList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2554
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->trailer_:Ljava/util/List;

    return-object v0
.end method

.method public hasContentRating()Z
    .registers 2

    .prologue
    .line 2470
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasContentRating:Z

    return v0
.end method

.method public hasDislikes()Z
    .registers 2

    .prologue
    .line 2504
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDislikes:Z

    return v0
.end method

.method public hasDuration()Z
    .registers 2

    .prologue
    .line 2436
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDuration:Z

    return v0
.end method

.method public hasLikes()Z
    .registers 2

    .prologue
    .line 2487
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasLikes:Z

    return v0
.end method

.method public hasReleaseDate()Z
    .registers 2

    .prologue
    .line 2453
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasReleaseDate:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2826
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2827
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_72

    .line 2831
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2832
    :sswitch_d
    return-object p0

    .line 2837
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;-><init>()V

    .line 2838
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2839
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->addCredit(Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2843
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->setDuration(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2847
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->setReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2851
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->setContentRating(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2855
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->setLikes(J)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2859
    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->setDislikes(J)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2863
    :sswitch_42
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->addGenre(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2867
    :sswitch_4a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;-><init>()V

    .line 2868
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2869
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->addTrailer(Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2873
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    :sswitch_56
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;-><init>()V

    .line 2874
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2875
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->addRentalTerm(Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2879
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    :sswitch_62
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->addAudioLanguage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2883
    :sswitch_6a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->addCaptionLanguage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    goto :goto_0

    .line 2827
    :sswitch_data_72
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1a
        0x1a -> :sswitch_22
        0x22 -> :sswitch_2a
        0x28 -> :sswitch_32
        0x30 -> :sswitch_3a
        0x3a -> :sswitch_42
        0x42 -> :sswitch_4a
        0x4a -> :sswitch_56
        0x52 -> :sswitch_62
        0x5a -> :sswitch_6a
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
    .line 2393
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    move-result-object v0

    return-object v0
.end method

.method public setContentRating(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasContentRating:Z

    .line 2473
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->contentRating_:Ljava/lang/String;

    .line 2474
    return-object p0
.end method

.method public setDislikes(J)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 4
    .parameter "value"

    .prologue
    .line 2506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDislikes:Z

    .line 2507
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->dislikes_:J

    .line 2508
    return-object p0
.end method

.method public setDuration(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDuration:Z

    .line 2439
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->duration_:Ljava/lang/String;

    .line 2440
    return-object p0
.end method

.method public setLikes(J)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 4
    .parameter "value"

    .prologue
    .line 2489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasLikes:Z

    .line 2490
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->likes_:J

    .line 2491
    return-object p0
.end method

.method public setReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 2455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasReleaseDate:Z

    .line 2456
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->releaseDate_:Ljava/lang/String;

    .line 2457
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2710
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getCreditList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;

    .line 2711
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_8

    .line 2713
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDuration()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2714
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getDuration()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2716
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasReleaseDate()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2717
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2719
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasContentRating()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2720
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getContentRating()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2722
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasLikes()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 2723
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getLikes()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2725
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDislikes()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 2726
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getDislikes()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2728
    :cond_5f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getGenreList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_67
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2729
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_67

    .line 2731
    .end local v0           #element:Ljava/lang/String;
    :cond_78
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getTrailerList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_80
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    .line 2732
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_80

    .line 2734
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    :cond_92
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getRentalTermList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;

    .line 2735
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_9a

    .line 2737
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    :cond_ac
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getAudioLanguageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2738
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_b4

    .line 2740
    .end local v0           #element:Ljava/lang/String;
    :cond_c6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getCaptionLanguageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ce
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2741
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_ce

    .line 2743
    .end local v0           #element:Ljava/lang/String;
    :cond_e0
    return-void
.end method
