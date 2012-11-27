.class public Lcom/google/android/finsky/layout/RateReviewSection;
.super Landroid/widget/LinearLayout;
.source "RateReviewSection.java"


# instance fields
.field private mMyRatingBar:Landroid/widget/RatingBar;

.field private mMyRatingText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method


# virtual methods
.method public configure(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/library/Libraries;)V
    .registers 8
    .parameter "document"
    .parameter "review"
    .parameter "fragment"
    .parameter "libraries"

    .prologue
    .line 77
    invoke-virtual {p0, p4, p1}, Lcom/google/android/finsky/layout/RateReviewSection;->updateVisibility(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/RateReviewSection;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_a

    .line 113
    :goto_9
    return-void

    .line 82
    :cond_a
    if-eqz p2, :cond_3b

    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getStarRating()I

    move-result v1

    :goto_10
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/RateReviewSection;->updateRating(I)V

    .line 84
    new-instance v1, Lcom/google/android/finsky/layout/RateReviewSection$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/finsky/layout/RateReviewSection$1;-><init>(Lcom/google/android/finsky/layout/RateReviewSection;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;)V

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/RateReviewSection;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/RateReviewSection;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v0

    .line 110
    .local v0, color:I
    iget-object v1, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/RateReviewSection;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0701e4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/RateReviewSection;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 82
    .end local v0           #color:I
    :cond_3b
    const/4 v1, -0x1

    goto :goto_10
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 53
    const v0, 0x7f0801ce

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingText:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0801cf

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingBar:Landroid/widget/RatingBar;

    .line 55
    return-void
.end method

.method public updateRating(I)V
    .registers 5
    .parameter "newRating"

    .prologue
    .line 116
    const v0, 0x7f0701da

    .line 117
    .local v0, headerId:I
    if-lez p1, :cond_8

    .line 118
    const v0, 0x7f0701db

    .line 120
    :cond_8
    iget-object v1, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingBar:Landroid/widget/RatingBar;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 121
    iget-object v1, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/RateReviewSection;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method public updateVisibility(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)V
    .registers 4
    .parameter "libraries"
    .parameter "document"

    .prologue
    .line 58
    invoke-static {p1, p2}, Lcom/google/android/finsky/utils/DocUtils;->canRate(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 59
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->setVisibility(I)V

    .line 64
    :goto_b
    return-void

    .line 63
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->setVisibility(I)V

    goto :goto_b
.end method
