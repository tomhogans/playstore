.class public final Lcom/google/android/finsky/remoting/protos/Doc$Document;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Document"
.end annotation


# instance fields
.field private aggregateRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

.field private availability_:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

.field private cachedSize:I

.field private categoryId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private child_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Document;",
            ">;"
        }
    .end annotation
.end field

.field private consumptionUrl_:Ljava/lang/String;

.field private decoration_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Document;",
            ">;"
        }
    .end annotation
.end field

.field private docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

.field private documentVariant_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;",
            ">;"
        }
    .end annotation
.end field

.field private fetchDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

.field private hasAggregateRating:Z

.field private hasAvailability:Z

.field private hasConsumptionUrl:Z

.field private hasDocid:Z

.field private hasFetchDocid:Z

.field private hasPriceDeprecated:Z

.field private hasPrivacyPolicyUrl:Z

.field private hasSampleDocid:Z

.field private hasTitle:Z

.field private hasUrl:Z

.field private image_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation
.end field

.field private offer_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation
.end field

.field private parent_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Document;",
            ">;"
        }
    .end annotation
.end field

.field private priceDeprecated_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

.field private privacyPolicyUrl_:Ljava/lang/String;

.field private sampleDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

.field private snippet_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title_:Ljava/lang/String;

.field private translatedSnippet_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;",
            ">;"
        }
    .end annotation
.end field

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1375
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1380
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 1400
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->fetchDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 1420
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->sampleDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 1440
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->title_:Ljava/lang/String;

    .line 1457
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->url_:Ljava/lang/String;

    .line 1473
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->snippet_:Ljava/util/List;

    .line 1506
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->categoryId_:Ljava/util/List;

    .line 1539
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->translatedSnippet_:Ljava/util/List;

    .line 1573
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->priceDeprecated_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 1592
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->offer_:Ljava/util/List;

    .line 1626
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->availability_:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    .line 1645
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->image_:Ljava/util/List;

    .line 1678
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->child_:Ljava/util/List;

    .line 1711
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->parent_:Ljava/util/List;

    .line 1744
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->decoration_:Ljava/util/List;

    .line 1778
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->aggregateRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    .line 1797
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->documentVariant_:Ljava/util/List;

    .line 1831
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->privacyPolicyUrl_:Ljava/lang/String;

    .line 1848
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->consumptionUrl_:Ljava/lang/String;

    .line 1990
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->cachedSize:I

    .line 1375
    return-void
.end method


# virtual methods
.method public addCategoryId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1523
    if-nez p1, :cond_8

    .line 1524
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1526
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->categoryId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->categoryId_:Ljava/util/List;

    .line 1529
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->categoryId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1530
    return-object p0
.end method

.method public addChild(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1695
    if-nez p1, :cond_8

    .line 1696
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1698
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->child_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1699
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->child_:Ljava/util/List;

    .line 1701
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->child_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1702
    return-object p0
.end method

.method public addDecoration(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1761
    if-nez p1, :cond_8

    .line 1762
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1764
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->decoration_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1765
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->decoration_:Ljava/util/List;

    .line 1767
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->decoration_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1768
    return-object p0
.end method

.method public addDocumentVariant(Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1814
    if-nez p1, :cond_8

    .line 1815
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1817
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->documentVariant_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1818
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->documentVariant_:Ljava/util/List;

    .line 1820
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->documentVariant_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1821
    return-object p0
.end method

.method public addImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1662
    if-nez p1, :cond_8

    .line 1663
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1665
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->image_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->image_:Ljava/util/List;

    .line 1668
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->image_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1669
    return-object p0
.end method

.method public addOffer(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1609
    if-nez p1, :cond_8

    .line 1610
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1612
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->offer_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->offer_:Ljava/util/List;

    .line 1615
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->offer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1616
    return-object p0
.end method

.method public addParent(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1728
    if-nez p1, :cond_8

    .line 1729
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1731
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->parent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->parent_:Ljava/util/List;

    .line 1734
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->parent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1735
    return-object p0
.end method

.method public addSnippet(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1490
    if-nez p1, :cond_8

    .line 1491
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1493
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->snippet_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->snippet_:Ljava/util/List;

    .line 1496
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->snippet_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1497
    return-object p0
.end method

.method public addTranslatedSnippet(Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1556
    if-nez p1, :cond_8

    .line 1557
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1559
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->translatedSnippet_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->translatedSnippet_:Ljava/util/List;

    .line 1562
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->translatedSnippet_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1563
    return-object p0
.end method

.method public getAggregateRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .registers 2

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->aggregateRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    return-object v0
.end method

.method public getAvailability()Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .registers 2

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->availability_:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1993
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->cachedSize:I

    if-gez v0, :cond_7

    .line 1995
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSerializedSize()I

    .line 1997
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->cachedSize:I

    return v0
.end method

.method public getCategoryIdList()Ljava/util/List;
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
    .line 1509
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->categoryId_:Ljava/util/List;

    return-object v0
.end method

.method public getChildList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->child_:Ljava/util/List;

    return-object v0
.end method

.method public getConsumptionUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->consumptionUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDecorationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->decoration_:Ljava/util/List;

    return-object v0
.end method

.method public getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .registers 2

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    return-object v0
.end method

.method public getDocumentVariantList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->documentVariant_:Ljava/util/List;

    return-object v0
.end method

.method public getFetchDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .registers 2

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->fetchDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->image_:Ljava/util/List;

    return-object v0
.end method

.method public getOfferList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->offer_:Ljava/util/List;

    return-object v0
.end method

.method public getParentList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->parent_:Ljava/util/List;

    return-object v0
.end method

.method public getPriceDeprecated()Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 2

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->priceDeprecated_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    return-object v0
.end method

.method public getPrivacyPolicyUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->privacyPolicyUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .registers 2

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->sampleDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 2002
    const/4 v3, 0x0

    .line 2003
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasDocid()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2004
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2007
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasFetchDocid()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2008
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getFetchDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2011
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasSampleDocid()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 2012
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSampleDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2015
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasTitle()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 2016
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2019
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasUrl()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 2020
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2024
    :cond_51
    const/4 v0, 0x0

    .line 2025
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSnippetList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2026
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_5a

    .line 2029
    .end local v1           #element:Ljava/lang/String;
    :cond_6c
    add-int/2addr v3, v0

    .line 2030
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSnippetList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2032
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPriceDeprecated()Z

    move-result v4

    if-eqz v4, :cond_88

    .line 2033
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getPriceDeprecated()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2036
    :cond_88
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAvailability()Z

    move-result v4

    if-eqz v4, :cond_99

    .line 2037
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getAvailability()Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2040
    :cond_99
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getImageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 2041
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    const/16 v4, 0xa

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_a1

    .line 2044
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getChildList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_bd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 2045
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    const/16 v4, 0xb

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_bd

    .line 2048
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :cond_d1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAggregateRating()Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 2049
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getAggregateRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2052
    :cond_e2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getOfferList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ea
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fe

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 2053
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const/16 v4, 0xe

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_ea

    .line 2056
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_fe
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getTranslatedSnippetList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_106
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    .line 2057
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    const/16 v4, 0xf

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_106

    .line 2060
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    :cond_11a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDocumentVariantList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_122
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_136

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    .line 2061
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    const/16 v4, 0x10

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_122

    .line 2065
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    :cond_136
    const/4 v0, 0x0

    .line 2066
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getCategoryIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_151

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2067
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_13f

    .line 2070
    .end local v1           #element:Ljava/lang/String;
    :cond_151
    add-int/2addr v3, v0

    .line 2071
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getCategoryIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 2073
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDecorationList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_165
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_179

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 2074
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    const/16 v4, 0x12

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_165

    .line 2077
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :cond_179
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getParentList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_181
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_195

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 2078
    .restart local v1       #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    const/16 v4, 0x13

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_181

    .line 2081
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :cond_195
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPrivacyPolicyUrl()Z

    move-result v4

    if-eqz v4, :cond_1a6

    .line 2082
    const/16 v4, 0x14

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2085
    :cond_1a6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasConsumptionUrl()Z

    move-result v4

    if-eqz v4, :cond_1b7

    .line 2086
    const/16 v4, 0x15

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getConsumptionUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2089
    :cond_1b7
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->cachedSize:I

    .line 2090
    return v3
.end method

.method public getSnippetList()Ljava/util/List;
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
    .line 1476
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->snippet_:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslatedSnippetList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->translatedSnippet_:Ljava/util/List;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAggregateRating()Z
    .registers 2

    .prologue
    .line 1779
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAggregateRating:Z

    return v0
.end method

.method public hasAvailability()Z
    .registers 2

    .prologue
    .line 1627
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAvailability:Z

    return v0
.end method

.method public hasConsumptionUrl()Z
    .registers 2

    .prologue
    .line 1850
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasConsumptionUrl:Z

    return v0
.end method

.method public hasDocid()Z
    .registers 2

    .prologue
    .line 1381
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasDocid:Z

    return v0
.end method

.method public hasFetchDocid()Z
    .registers 2

    .prologue
    .line 1401
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasFetchDocid:Z

    return v0
.end method

.method public hasPriceDeprecated()Z
    .registers 2

    .prologue
    .line 1574
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPriceDeprecated:Z

    return v0
.end method

.method public hasPrivacyPolicyUrl()Z
    .registers 2

    .prologue
    .line 1833
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPrivacyPolicyUrl:Z

    return v0
.end method

.method public hasSampleDocid()Z
    .registers 2

    .prologue
    .line 1421
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasSampleDocid:Z

    return v0
.end method

.method public hasTitle()Z
    .registers 2

    .prologue
    .line 1442
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasTitle:Z

    return v0
.end method

.method public hasUrl()Z
    .registers 2

    .prologue
    .line 1459
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2098
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2099
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_e4

    .line 2103
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2104
    :sswitch_d
    return-object p0

    .line 2109
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;-><init>()V

    .line 2110
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2111
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 2115
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    :sswitch_1a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;-><init>()V

    .line 2116
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2117
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setFetchDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 2121
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    :sswitch_26
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;-><init>()V

    .line 2122
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2123
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setSampleDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 2127
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 2131
    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 2135
    :sswitch_42
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addSnippet(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 2139
    :sswitch_4a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;-><init>()V

    .line 2140
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2141
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setPriceDeprecated(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 2145
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :sswitch_56
    new-instance v1, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;-><init>()V

    .line 2146
    .local v1, value:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2147
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setAvailability(Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 2151
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    :sswitch_62
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;-><init>()V

    .line 2152
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2153
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 2157
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :sswitch_6e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;-><init>()V

    .line 2158
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2159
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addChild(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 2163
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :sswitch_7a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;-><init>()V

    .line 2164
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2165
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setAggregateRating(Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 2169
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    :sswitch_87
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;-><init>()V

    .line 2170
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2171
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addOffer(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 2175
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :sswitch_94
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;-><init>()V

    .line 2176
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2177
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addTranslatedSnippet(Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 2181
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    :sswitch_a1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;-><init>()V

    .line 2182
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2183
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addDocumentVariant(Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 2187
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    :sswitch_ae
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addCategoryId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 2191
    :sswitch_b7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;-><init>()V

    .line 2192
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2193
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addDecoration(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 2197
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :sswitch_c4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;-><init>()V

    .line 2198
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2199
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addParent(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 2203
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :sswitch_d1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setPrivacyPolicyUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 2207
    :sswitch_da
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setConsumptionUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 2099
    nop

    :sswitch_data_e4
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1a
        0x1a -> :sswitch_26
        0x22 -> :sswitch_32
        0x2a -> :sswitch_3a
        0x32 -> :sswitch_42
        0x3a -> :sswitch_4a
        0x4a -> :sswitch_56
        0x52 -> :sswitch_62
        0x5a -> :sswitch_6e
        0x6a -> :sswitch_7a
        0x72 -> :sswitch_87
        0x7a -> :sswitch_94
        0x82 -> :sswitch_a1
        0x8a -> :sswitch_ae
        0x92 -> :sswitch_b7
        0x9a -> :sswitch_c4
        0xa2 -> :sswitch_d1
        0xaa -> :sswitch_da
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
    .line 1372
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    move-result-object v0

    return-object v0
.end method

.method public setAggregateRating(Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1782
    if-nez p1, :cond_8

    .line 1783
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1785
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAggregateRating:Z

    .line 1786
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->aggregateRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    .line 1787
    return-object p0
.end method

.method public setAvailability(Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1630
    if-nez p1, :cond_8

    .line 1631
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1633
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAvailability:Z

    .line 1634
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->availability_:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    .line 1635
    return-object p0
.end method

.method public setConsumptionUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1852
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasConsumptionUrl:Z

    .line 1853
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->consumptionUrl_:Ljava/lang/String;

    .line 1854
    return-object p0
.end method

.method public setDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1384
    if-nez p1, :cond_8

    .line 1385
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1387
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasDocid:Z

    .line 1388
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 1389
    return-object p0
.end method

.method public setFetchDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1404
    if-nez p1, :cond_8

    .line 1405
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1407
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasFetchDocid:Z

    .line 1408
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->fetchDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 1409
    return-object p0
.end method

.method public setPriceDeprecated(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1577
    if-nez p1, :cond_8

    .line 1578
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1580
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPriceDeprecated:Z

    .line 1581
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->priceDeprecated_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 1582
    return-object p0
.end method

.method public setPrivacyPolicyUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPrivacyPolicyUrl:Z

    .line 1836
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->privacyPolicyUrl_:Ljava/lang/String;

    .line 1837
    return-object p0
.end method

.method public setSampleDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1424
    if-nez p1, :cond_8

    .line 1425
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1427
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasSampleDocid:Z

    .line 1428
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->sampleDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 1429
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasTitle:Z

    .line 1445
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->title_:Ljava/lang/String;

    .line 1446
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasUrl:Z

    .line 1462
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->url_:Ljava/lang/String;

    .line 1463
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1931
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasDocid()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1932
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1934
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasFetchDocid()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1935
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getFetchDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1937
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasSampleDocid()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1938
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSampleDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1940
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1941
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1943
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasUrl()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1944
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1946
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSnippetList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1947
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_4e

    .line 1949
    .end local v0           #element:Ljava/lang/String;
    :cond_5f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPriceDeprecated()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 1950
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getPriceDeprecated()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1952
    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAvailability()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 1953
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getAvailability()Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1955
    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getImageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_84
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 1956
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_84

    .line 1958
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_96
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getChildList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 1959
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_9e

    .line 1961
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :cond_b0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAggregateRating()Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 1962
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getAggregateRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1964
    :cond_bf
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getOfferList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 1965
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_c7

    .line 1967
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_d9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getTranslatedSnippetList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    .line 1968
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_e1

    .line 1970
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    :cond_f3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDocumentVariantList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_fb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    .line 1971
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_fb

    .line 1973
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    :cond_10d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getCategoryIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_115
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_127

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1974
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_115

    .line 1976
    .end local v0           #element:Ljava/lang/String;
    :cond_127
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDecorationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_141

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 1977
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    const/16 v2, 0x12

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_12f

    .line 1979
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :cond_141
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getParentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_149
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 1980
    .restart local v0       #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    const/16 v2, 0x13

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_149

    .line 1982
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :cond_15b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPrivacyPolicyUrl()Z

    move-result v2

    if-eqz v2, :cond_16a

    .line 1983
    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1985
    :cond_16a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasConsumptionUrl()Z

    move-result v2

    if-eqz v2, :cond_179

    .line 1986
    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getConsumptionUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1988
    :cond_179
    return-void
.end method
