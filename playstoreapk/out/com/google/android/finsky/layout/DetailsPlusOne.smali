.class public Lcom/google/android/finsky/layout/DetailsPlusOne;
.super Lcom/google/android/finsky/layout/AccessibleLinearLayout;
.source "DetailsPlusOne.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/DetailsPlusOne$2;,
        Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/layout/AccessibleLinearLayout;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;",
        ">;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# static fields
.field private static final sAllIntegerDigitFormatter:Ljava/text/DecimalFormat;

.field private static final sSingleFractionDigitFormatter:Ljava/text/DecimalFormat;


# instance fields
.field private mCirclesPeopleCount:I

.field private mCookie:Ljava/lang/String;

.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mFirstFriendName:Ljava/lang/String;

.field private mHasPlusOneData:Z

.field private mIsDetached:Z

.field private mIsWaitingServerResponse:Z

.field private mSetByUser:Z

.field private mTotal:J

.field private mUrl:Ljava/lang/String;

.field private mUserState:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 63
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "@#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/layout/DetailsPlusOne;->sSingleFractionDigitFormatter:Ljava/text/DecimalFormat;

    .line 69
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/layout/DetailsPlusOne;->sAllIntegerDigitFormatter:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/DetailsPlusOne;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/AccessibleLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/DetailsPlusOne;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->handleClick()V

    return-void
.end method

.method private bindPlusOneButton()V
    .registers 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mSetByUser:Z

    if-eqz v0, :cond_14

    sget-object v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->On:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    :goto_6
    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUserState:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    .line 167
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->syncButtonState()V

    .line 169
    new-instance v0, Lcom/google/android/finsky/layout/DetailsPlusOne$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/DetailsPlusOne$1;-><init>(Lcom/google/android/finsky/layout/DetailsPlusOne;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    return-void

    .line 166
    :cond_14
    sget-object v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->Off:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    goto :goto_6
.end method

.method private bindPlusOneData(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;Landroid/os/Bundle;)V
    .registers 6
    .parameter "docData"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 102
    if-eqz p2, :cond_38

    const-string v0, "PlusOneViewBinder.hasPlusOneData"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 103
    const-string v0, "PlusOneViewBinder.hasPlusOneData"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mHasPlusOneData:Z

    .line 104
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mHasPlusOneData:Z

    if-eqz v0, :cond_37

    .line 105
    const-string v0, "PlusOneViewBinder.setByUser"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mSetByUser:Z

    .line 106
    const-string v0, "PlusOneViewBinder.total"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mTotal:J

    .line 107
    const-string v0, "PlusOneViewBinder.circlesPeopleCount"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mCirclesPeopleCount:I

    .line 108
    const-string v0, "PlusOneViewBinder.firstFriendName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mFirstFriendName:Ljava/lang/String;

    .line 123
    :cond_37
    :goto_37
    return-void

    .line 110
    :cond_38
    if-nez p1, :cond_3d

    .line 111
    iput-boolean v2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mHasPlusOneData:Z

    goto :goto_37

    .line 113
    :cond_3d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mHasPlusOneData:Z

    .line 114
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getSetByUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mSetByUser:Z

    .line 115
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getTotal()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mTotal:J

    .line 116
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getCirclesProfilesCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mCirclesPeopleCount:I

    .line 117
    iget v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mCirclesPeopleCount:I

    if-gtz v0, :cond_5a

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mFirstFriendName:Ljava/lang/String;

    goto :goto_37

    .line 120
    :cond_5a
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getCirclesProfilesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mFirstFriendName:Ljava/lang/String;

    goto :goto_37
.end method

.method private bindPlusOneLegend()V
    .registers 15

    .prologue
    const v13, 0x7f070238

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 235
    const v9, 0x7f0800e0

    invoke-virtual {p0, v9}, Lcom/google/android/finsky/layout/DetailsPlusOne;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 236
    .local v6, legendView:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUserState:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    sget-object v10, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->Error:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    if-ne v9, v10, :cond_1b

    .line 237
    const v7, 0x7f07022f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 296
    :goto_1a
    return-void

    .line 241
    :cond_1b
    iget-object v9, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUserState:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    sget-object v10, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->On:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    if-ne v9, v10, :cond_33

    move v5, v7

    .line 244
    .local v5, isSetByUser:Z
    :goto_22
    iget-wide v9, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mTotal:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_35

    if-nez v5, :cond_35

    .line 245
    const v7, 0x7f070230

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1a

    .end local v5           #isSetByUser:Z
    :cond_33
    move v5, v8

    .line 241
    goto :goto_22

    .line 250
    .restart local v5       #isSetByUser:Z
    :cond_35
    iget-wide v9, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mTotal:J

    const-wide/16 v11, 0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_46

    if-eqz v5, :cond_46

    .line 251
    const v7, 0x7f070231

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1a

    .line 255
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 256
    .local v0, context:Landroid/content/Context;
    iget v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mCirclesPeopleCount:I

    .line 257
    .local v1, countInCircles:I
    if-nez v1, :cond_6a

    .line 260
    iget-wide v9, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mTotal:J

    invoke-static {v0, v9, v10, v13}, Lcom/google/android/finsky/layout/DetailsPlusOne;->formatPlusOneCount(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, formattedTotalCount:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0002

    iget-wide v11, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mTotal:J

    long-to-int v11, v11

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v8

    invoke-virtual {v9, v10, v11, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, formattedLegend:Ljava/lang/String;
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 271
    .end local v3           #formattedLegend:Ljava/lang/String;
    .end local v4           #formattedTotalCount:Ljava/lang/String;
    :cond_6a
    if-ne v1, v7, :cond_83

    if-nez v5, :cond_83

    .line 272
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070232

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mFirstFriendName:Ljava/lang/String;

    aput-object v11, v7, v8

    invoke-virtual {v9, v10, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 278
    :cond_83
    if-ne v1, v7, :cond_9d

    if-eqz v5, :cond_9d

    .line 279
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070233

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mFirstFriendName:Ljava/lang/String;

    aput-object v11, v7, v8

    invoke-virtual {v9, v10, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 287
    :cond_9d
    add-int/lit8 v1, v1, -0x1

    .line 288
    int-to-long v9, v1

    invoke-static {v0, v9, v10, v13}, Lcom/google/android/finsky/layout/DetailsPlusOne;->formatPlusOneCount(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, formattedCircleCount:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0003

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mFirstFriendName:Ljava/lang/String;

    aput-object v12, v11, v8

    aput-object v2, v11, v7

    invoke-virtual {v9, v10, v1, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .restart local v3       #formattedLegend:Ljava/lang/String;
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a
.end method

.method public static formatPlusOneCount(Landroid/content/Context;JI)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "number"
    .parameter "formatterId"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x447a

    .line 309
    const-wide/16 v3, 0x3e8

    cmp-long v3, p1, v3

    if-gez v3, :cond_20

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, ""

    aput-object v5, v4, v7

    invoke-virtual {v3, p3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 328
    :goto_1f
    return-object v3

    .line 313
    :cond_20
    long-to-float v0, p1

    .line 314
    .local v0, result:F
    const v1, 0x7f070236

    .line 315
    .local v1, suffix:I
    div-float/2addr v0, v5

    .line 317
    cmpl-float v3, v0, v5

    if-lez v3, :cond_2d

    .line 318
    const v1, 0x7f070237

    .line 319
    div-float/2addr v0, v5

    .line 322
    :cond_2d
    const/high16 v3, 0x4120

    cmpg-float v3, v0, v3

    if-gez v3, :cond_4d

    .line 323
    sget-object v3, Lcom/google/android/finsky/layout/DetailsPlusOne;->sSingleFractionDigitFormatter:Ljava/text/DecimalFormat;

    float-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, value:Ljava/lang/String;
    :goto_3a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, p3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1f

    .line 325
    .end local v2           #value:Ljava/lang/String;
    :cond_4d
    sget-object v3, Lcom/google/android/finsky/layout/DetailsPlusOne;->sAllIntegerDigitFormatter:Ljava/text/DecimalFormat;

    float-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_3a
.end method

.method private getAnalyticsString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plusOne?doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleClick()V
    .registers 10

    .prologue
    const-wide/16 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 182
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mCookie:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->getAnalyticsString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const-string v1, "+1"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "cidi"

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "c"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mSetByUser:Z

    if-eqz v0, :cond_64

    .line 188
    iget-wide v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mTotal:J

    sub-long/2addr v0, v7

    iput-wide v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mTotal:J

    .line 189
    iput-boolean v6, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mSetByUser:Z

    .line 194
    :goto_48
    invoke-direct {p0, v5}, Lcom/google/android/finsky/layout/DetailsPlusOne;->setLoading(Z)V

    .line 195
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mSetByUser:Z

    if-eqz v0, :cond_6c

    sget-object v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->On:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    :goto_51
    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUserState:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    .line 196
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->syncButtonState()V

    .line 197
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mSetByUser:Z

    invoke-interface {v0, v1, v2, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->setPlusOne(Ljava/lang/String;ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 198
    return-void

    .line 191
    :cond_64
    iget-wide v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mTotal:J

    add-long/2addr v0, v7

    iput-wide v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mTotal:J

    .line 192
    iput-boolean v5, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mSetByUser:Z

    goto :goto_48

    .line 195
    :cond_6c
    sget-object v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->Off:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    goto :goto_51
.end method

.method private rebindViews()V
    .registers 2

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mHasPlusOneData:Z

    if-eqz v0, :cond_d

    .line 127
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->bindPlusOneButton()V

    .line 128
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->bindPlusOneLegend()V

    .line 129
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->syncContentDescription()V

    .line 131
    :cond_d
    return-void
.end method

.method private setLoading(Z)V
    .registers 4
    .parameter "isLoading"

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mIsWaitingServerResponse:Z

    .line 230
    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mIsWaitingServerResponse:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 232
    return-void

    .line 230
    :cond_12
    const/16 v0, 0x8

    goto :goto_e
.end method

.method private syncButtonState()V
    .registers 5

    .prologue
    const v1, 0x7f0200aa

    .line 144
    const v2, 0x7f0800de

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/DetailsPlusOne;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 146
    .local v0, plusOneButton:Landroid/widget/ImageView;
    sget-object v2, Lcom/google/android/finsky/layout/DetailsPlusOne$2;->$SwitchMap$com$google$android$finsky$layout$DetailsPlusOne$PlusOneButtonState:[I

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUserState:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3a

    .line 158
    :goto_19
    return-void

    .line 148
    :pswitch_1a
    iget-boolean v2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mIsWaitingServerResponse:Z

    if-eqz v2, :cond_22

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_19

    :cond_22
    const v1, 0x7f0200ad

    goto :goto_1e

    .line 152
    :pswitch_26
    iget-boolean v2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mIsWaitingServerResponse:Z

    if-eqz v2, :cond_2e

    :goto_2a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_19

    :cond_2e
    const v1, 0x7f0200ac

    goto :goto_2a

    .line 156
    :pswitch_32
    const v1, 0x7f0200ab

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_19

    .line 146
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_26
        :pswitch_32
    .end packed-switch
.end method

.method private syncContentDescription()V
    .registers 3

    .prologue
    .line 161
    const v1, 0x7f0800e0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/DetailsPlusOne;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 162
    .local v0, legendView:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/DetailsPlusOne;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;ZLandroid/os/Bundle;)V
    .registers 8
    .parameter "dfeApi"
    .parameter "url"
    .parameter "cookie"
    .parameter "document"
    .parameter "hasDetailsLoaded"
    .parameter "savedInstanceState"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 88
    iput-object p2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUrl:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mCookie:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 92
    if-eqz p5, :cond_18

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasPlusOneData()Z

    move-result v0

    if-nez v0, :cond_18

    .line 93
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->setVisibility(I)V

    .line 99
    :goto_17
    return-void

    .line 95
    :cond_18
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    move-result-object v0

    invoke-direct {p0, v0, p6}, Lcom/google/android/finsky/layout/DetailsPlusOne;->bindPlusOneData(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;Landroid/os/Bundle;)V

    .line 97
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->rebindViews()V

    goto :goto_17
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mIsDetached:Z

    .line 305
    invoke-super {p0}, Lcom/google/android/finsky/layout/AccessibleLinearLayout;->onDetachedFromWindow()V

    .line 306
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mIsDetached:Z

    if-nez v0, :cond_15

    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->setLoading(Z)V

    .line 219
    sget-object v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->Error:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUserState:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    .line 220
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->syncButtonState()V

    .line 221
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->bindPlusOneLegend()V

    .line 222
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->syncContentDescription()V

    .line 225
    :cond_15
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUrl:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->invalidateDetailsCache(Ljava/lang/String;Z)V

    .line 226
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;)V
    .registers 5
    .parameter "response"

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mIsDetached:Z

    if-nez v0, :cond_b

    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->setLoading(Z)V

    .line 206
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->rebindViews()V

    .line 209
    :cond_b
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUrl:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->invalidateDetailsCache(Ljava/lang/String;Z)V

    .line 210
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DetailsPlusOne;->onResponse(Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;)V

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "bundle"

    .prologue
    .line 134
    const-string v0, "PlusOneViewBinder.hasPlusOneData"

    iget-boolean v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mHasPlusOneData:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mHasPlusOneData:Z

    if-eqz v0, :cond_27

    .line 136
    const-string v0, "PlusOneViewBinder.setByUser"

    iget-boolean v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mSetByUser:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    const-string v0, "PlusOneViewBinder.total"

    iget-wide v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mTotal:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 138
    const-string v0, "PlusOneViewBinder.circlesPeopleCount"

    iget v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mCirclesPeopleCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    const-string v0, "PlusOneViewBinder.firstFriendName"

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mFirstFriendName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_27
    return-void
.end method
