.class public Lcom/google/android/finsky/adapters/ReviewsAdapter;
.super Lcom/google/android/finsky/adapters/PaginatedListAdapter;
.source "ReviewsAdapter.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/ReviewsAdapter$2;,
        Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;,
        Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseFilterOptionsHandler;,
        Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;
    }
.end annotation


# instance fields
.field private final mData:Lcom/google/android/finsky/api/model/DfeReviews;

.field private final mDoc:Lcom/google/android/finsky/api/model/Document;

.field private final mFilterHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseFilterOptionsHandler;

.field private mHeaderVisible:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mRatingHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeReviews;Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseFilterOptionsHandler;)V
    .registers 9
    .parameter "context"
    .parameter "doc"
    .parameter "reviews"
    .parameter "ratingHandler"
    .parameter "filterHandler"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/DfeReviews;->inErrorState()Z

    move-result v1

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/DfeReviews;->isMoreAvailable()Z

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZZ)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 66
    iput-object p2, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 67
    iput-object p3, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 70
    iput-object p4, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mRatingHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;

    .line 71
    iput-object p5, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mFilterHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseFilterOptionsHandler;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/adapters/ReviewsAdapter;)Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mRatingHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;

    return-object v0
.end method

.method private bindItemView(Landroid/view/View;Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;I)V
    .registers 9
    .parameter "view"
    .parameter "holder"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 250
    invoke-virtual {p0, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getItem(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v1

    .line 252
    .local v1, review:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getCommentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    const/4 v0, 0x1

    .line 253
    .local v0, canRateReview:Z
    :goto_10
    iget-object v2, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewItemLayout:Lcom/google/android/finsky/layout/ReviewItemLayout;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/finsky/layout/ReviewItemLayout;->setReviewInfo(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;)V

    .line 254
    if-eqz v0, :cond_43

    .line 255
    iget-object v2, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewItemLayout:Lcom/google/android/finsky/layout/ReviewItemLayout;

    new-instance v3, Lcom/google/android/finsky/adapters/ReviewsAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/google/android/finsky/adapters/ReviewsAdapter$1;-><init>(Lcom/google/android/finsky/adapters/ReviewsAdapter;Lcom/google/android/finsky/remoting/protos/Rev$Review;)V

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ReviewItemLayout;->setRateReviewClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    :goto_23
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyText()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 266
    iget-object v2, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyLayout:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    if-nez v2, :cond_39

    .line 267
    iget-object v2, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/ReviewReplyLayout;

    iput-object v2, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyLayout:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    .line 268
    iput-object v4, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyStub:Landroid/view/ViewStub;

    .line 270
    :cond_39
    iget-object v2, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyLayout:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->setReviewInfo(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;)V

    .line 276
    :cond_40
    :goto_40
    return-void

    .line 252
    .end local v0           #canRateReview:Z
    :cond_41
    const/4 v0, 0x0

    goto :goto_10

    .line 262
    .restart local v0       #canRateReview:Z
    :cond_43
    iget-object v2, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewItemLayout:Lcom/google/android/finsky/layout/ReviewItemLayout;

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/layout/ReviewItemLayout;->setRateReviewClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_23

    .line 272
    :cond_49
    iget-object v2, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyLayout:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    if-eqz v2, :cond_40

    .line 273
    iget-object v2, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyLayout:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->setVisibility(I)V

    goto :goto_40
.end method

.method private filtersVisible()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 327
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private getFiltersView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 216
    if-eqz p1, :cond_3

    .line 224
    .end local p1
    :goto_2
    return-object p1

    .line 219
    .restart local p1
    :cond_3
    if-nez p1, :cond_1c

    const v1, 0x7f0400fc

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/ReviewsControlContainer;

    move-object v0, v1

    .line 222
    .end local p1
    .local v0, filtersView:Lcom/google/android/finsky/layout/ReviewsControlContainer;
    :goto_10
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ReviewsControlContainer;->setData(Lcom/google/android/finsky/api/model/DfeReviews;)V

    .line 223
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mFilterHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseFilterOptionsHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ReviewsControlContainer;->setFilterHandler(Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseFilterOptionsHandler;)V

    move-object p1, v0

    .line 224
    goto :goto_2

    .line 219
    .end local v0           #filtersView:Lcom/google/android/finsky/layout/ReviewsControlContainer;
    .restart local p1
    :cond_1c
    check-cast p1, Lcom/google/android/finsky/layout/ReviewsControlContainer;

    move-object v0, p1

    goto :goto_10
.end method

.method private getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 196
    if-nez p1, :cond_2d

    const v1, 0x7f0400fd

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object v0, v1

    .line 198
    .end local p1
    .local v0, headerView:Landroid/widget/TextView;
    :goto_d
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendForegroundColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f070155

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    return-object v0

    .line 196
    .end local v0           #headerView:Landroid/widget/TextView;
    .restart local p1
    :cond_2d
    check-cast p1, Landroid/widget/TextView;

    move-object v0, p1

    goto :goto_d
.end method

.method private getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 235
    if-nez p2, :cond_c

    .line 236
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400fe

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 239
    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;

    .line 241
    .local v0, holder:Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;
    if-nez v0, :cond_19

    .line 242
    new-instance v0, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;

    .end local v0           #holder:Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;
    invoke-direct {v0, p2}, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 245
    .restart local v0       #holder:Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;
    :cond_19
    invoke-direct {p0, p2, v0, p1}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->bindItemView(Landroid/view/View;Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;I)V

    .line 246
    return-object p2
.end method

.method private getNoMatchingView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 228
    if-nez p1, :cond_b

    const v1, 0x7f0400ff

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 230
    .local v0, result:Landroid/view/View;
    :goto_a
    return-object v0

    .end local v0           #result:Landroid/view/View;
    :cond_b
    move-object v0, p1

    .line 228
    goto :goto_a
.end method

.method private getStatisticsView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 205
    if-eqz p1, :cond_3

    .line 212
    .end local p1
    :goto_2
    return-object p1

    .line 208
    .restart local p1
    :cond_3
    if-nez p1, :cond_17

    const v1, 0x7f040100

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/HistogramView;

    move-object v0, v1

    .line 211
    .end local p1
    .local v0, statsView:Lcom/google/android/finsky/layout/HistogramView;
    :goto_10
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/HistogramView;->bind(Lcom/google/android/finsky/api/model/Document;)V

    move-object p1, v0

    .line 212
    goto :goto_2

    .line 208
    .end local v0           #statsView:Lcom/google/android/finsky/layout/HistogramView;
    .restart local p1
    :cond_17
    check-cast p1, Lcom/google/android/finsky/layout/HistogramView;

    move-object v0, p1

    goto :goto_10
.end method

.method private statsVisible()Z
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasReviewHistogramData()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public getCount()I
    .registers 4

    .prologue
    .line 76
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeReviews;->getCount()I

    move-result v0

    .line 77
    .local v0, result:I
    iget-boolean v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    if-eqz v1, :cond_c

    .line 78
    add-int/lit8 v0, v0, 0x1

    .line 80
    :cond_c
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->statsVisible()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 83
    :cond_14
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->filtersVisible()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 86
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->NONE:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    if-eq v1, v2, :cond_27

    .line 87
    add-int/lit8 v0, v0, 0x1

    .line 92
    :cond_26
    :goto_26
    return v0

    .line 88
    :cond_27
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeReviews;->getCount()I

    move-result v1

    if-nez v1, :cond_26

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method

.method public getFirstReviewViewIndex()I
    .registers 3

    .prologue
    .line 179
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeReviews;->getCount()I

    move-result v1

    if-nez v1, :cond_a

    .line 180
    const/4 v0, -0x1

    .line 192
    :cond_9
    :goto_9
    return v0

    .line 182
    :cond_a
    const/4 v0, 0x0

    .line 183
    .local v0, firstReviewView:I
    iget-boolean v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    if-eqz v1, :cond_11

    .line 184
    add-int/lit8 v0, v0, 0x1

    .line 186
    :cond_11
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->statsVisible()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 187
    add-int/lit8 v0, v0, 0x1

    .line 189
    :cond_19
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->filtersVisible()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public getItem(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "position"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_11

    .line 145
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/api/model/DfeReviews;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Rev$Review;

    .line 147
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getItem(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .registers 8
    .parameter "position"

    .prologue
    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_15

    move v0, v1

    .line 103
    .local v0, isLastRow:Z
    :goto_d
    iget-boolean v5, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    if-eqz v5, :cond_17

    if-nez p1, :cond_17

    move v1, v2

    .line 139
    :cond_14
    :goto_14
    return v1

    .end local v0           #isLastRow:Z
    :cond_15
    move v0, v2

    .line 102
    goto :goto_d

    .line 108
    .restart local v0       #isLastRow:Z
    :cond_17
    iget-boolean v2, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    if-eqz v2, :cond_1d

    .line 109
    add-int/lit8 p1, p1, -0x1

    .line 111
    :cond_1d
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->statsVisible()Z

    move-result v2

    if-eqz v2, :cond_25

    if-eqz p1, :cond_14

    .line 116
    :cond_25
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->statsVisible()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 117
    add-int/lit8 p1, p1, -0x1

    .line 119
    :cond_2d
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->filtersVisible()Z

    move-result v1

    if-eqz v1, :cond_37

    if-nez p1, :cond_37

    .line 120
    const/4 v1, 0x2

    goto :goto_14

    .line 123
    :cond_37
    if-eqz v0, :cond_7b

    .line 124
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeReviews;->getCount()I

    move-result v1

    if-nez v1, :cond_4d

    .line 125
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeReviews;->isMoreAvailable()Z

    move-result v1

    if-eqz v1, :cond_4b

    move v1, v3

    goto :goto_14

    :cond_4b
    const/4 v1, 0x3

    goto :goto_14

    .line 128
    :cond_4d
    sget-object v1, Lcom/google/android/finsky/adapters/ReviewsAdapter$2;->$SwitchMap$com$google$android$finsky$adapters$PaginatedListAdapter$FooterMode:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7e

    .line 136
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No footer or item at row "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_75
    move v1, v3

    .line 130
    goto :goto_14

    .line 132
    :pswitch_77
    const/4 v1, 0x6

    goto :goto_14

    :pswitch_79
    move v1, v4

    .line 134
    goto :goto_14

    :cond_7b
    move v1, v4

    .line 139
    goto :goto_14

    .line 128
    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_75
        :pswitch_77
        :pswitch_79
    .end packed-switch
.end method

.method protected getLastRequestError()Ljava/lang/String;
    .registers 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeReviews;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_4e

    .line 169
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type for getView "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getItemViewType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :pswitch_24
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 167
    :goto_28
    return-object v1

    .line 156
    :pswitch_29
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getStatisticsView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_28

    .line 158
    :pswitch_2e
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getFiltersView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_28

    .line 160
    :pswitch_33
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getNoMatchingView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_28

    .line 162
    :pswitch_38
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getFirstReviewViewIndex()I

    move-result v0

    .line 163
    .local v0, offset:I
    sub-int v1, p1, v0

    invoke-direct {p0, v1, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_28

    .line 165
    .end local v0           #offset:I
    :pswitch_43
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getLoadingFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_28

    .line 167
    :pswitch_48
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getErrorFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_28

    .line 152
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_24
        :pswitch_29
        :pswitch_2e
        :pswitch_33
        :pswitch_38
        :pswitch_43
        :pswitch_48
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x7

    return v0
.end method

.method protected isMoreDataAvailable()Z
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->isMoreAvailable()Z

    move-result v0

    return v0
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 310
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 311
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .parameter "error"

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->triggerFooterErrorMode()V

    .line 316
    return-void
.end method

.method protected retryLoadingItems()V
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->retryLoadItems()V

    .line 291
    return-void
.end method
