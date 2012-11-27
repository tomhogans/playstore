.class public Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;
.super Lcom/google/android/finsky/billing/BillingFlow;
.source "CompleteCarrierBillingFlow.java"

# interfaces
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$1;,
        Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterError;,
        Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterCredentials;,
        Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterProvisioning;,
        Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;
    }
.end annotation


# instance fields
.field private final mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private final mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

.field private mCredentialsAction:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;

.field private mCredentialsCheckPerformed:Z

.field private final mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

.field private mPassword:Ljava/lang/String;

.field private mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

.field private mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

.field private mProvisioningAction:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

.field private mReferrerListCookie:Ljava/lang/String;

.field private mReferrerUrl:Ljava/lang/String;

.field private mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

.field private final mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

.field private mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

.field private mTosNumber:I

.field private mTosVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/analytics/Analytics;Lcom/google/android/finsky/analytics/FinskyEventLog;Landroid/os/Bundle;)V
    .registers 13
    .parameter "billingFlowContext"
    .parameter "listener"
    .parameter "analytics"
    .parameter "eventLog"
    .parameter "parameters"

    .prologue
    .line 81
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Lcom/google/android/finsky/analytics/Analytics;Lcom/google/android/finsky/analytics/FinskyEventLog;Landroid/os/Bundle;)V

    .line 83
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->CHECK_CARRIER_TOS_VERSION:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mCredentialsCheckPerformed:Z

    .line 85
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mProvisioningAction:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

    .line 86
    return-void
.end method

.method constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Lcom/google/android/finsky/analytics/Analytics;Lcom/google/android/finsky/analytics/FinskyEventLog;Landroid/os/Bundle;)V
    .registers 8
    .parameter "billingFlowContext"
    .parameter "listener"
    .parameter "dcbStorage"
    .parameter "analytics"
    .parameter "eventLog"
    .parameter "parameters"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p6}, Lcom/google/android/finsky/billing/BillingFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mTosNumber:I

    .line 93
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    .line 94
    iput-object p3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    .line 97
    iput-object p4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 98
    iput-object p5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    .line 99
    if-eqz p6, :cond_30

    .line 100
    const-string v0, "referrer_url"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mReferrerUrl:Ljava/lang/String;

    .line 101
    const-string v0, "referrer_list_cookie"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mReferrerListCookie:Ljava/lang/String;

    .line 103
    :cond_30
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;

    invoke-direct {v0, p3}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mCredentialsAction:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;

    .line 104
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mCredentialsCheckPerformed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->fail(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mReferrerUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mReferrerListCookie:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method


# virtual methods
.method createAndShowPasswordFragment()V
    .registers 4

    .prologue
    .line 266
    const-string v0, "dcbPinEntry"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->log(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v1, "dcbPinEntry"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getPasswordPrompt()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getPasswordForgotUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    .line 270
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    const-string v2, "PasswordDialog"

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method createAndShowTosFragment()V
    .registers 5

    .prologue
    .line 276
    const-string v0, "dcbTosChanged"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->log(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v1, "dcbTosChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTosVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mTosVersion:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTosUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->newInstance(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    .line 280
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;)V

    .line 281
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TosDialog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mTosNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    .line 282
    iget v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mTosNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mTosNumber:I

    .line 283
    return-void
.end method

.method credentialTimeStillValid(JJJ)Z
    .registers 10
    .parameter "expirationTime"
    .parameter "buffer"
    .parameter "now"

    .prologue
    .line 298
    sub-long v0, p1, p3

    .line 299
    .local v0, expiresAt:J
    cmp-long v2, v0, p5

    if-lez v2, :cond_8

    const/4 v2, 0x1

    :goto_7
    return v2

    :cond_8
    const/4 v2, 0x0

    goto :goto_7
.end method

.method credentialsStillValid(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;)Z
    .registers 9
    .parameter "credentials"

    .prologue
    .line 287
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->getCredentials()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 289
    :cond_12
    const/4 v0, 0x0

    .line 291
    :goto_13
    return v0

    :cond_14
    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->getExpirationTime()J

    move-result-wide v1

    sget-object v0, Lcom/google/android/finsky/config/G;->vendingCarrierCredentialsBufferMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->credentialTimeStillValid(JJJ)Z

    move-result v0

    goto :goto_13
.end method

.method public onCarrierBillingPasswordResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;Ljava/lang/String;)V
    .registers 6
    .parameter "result"
    .parameter "password"

    .prologue
    const/4 v2, 0x0

    .line 305
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    if-eqz v0, :cond_15

    .line 306
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->dismiss()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    .line 309
    :cond_15
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$1;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$fragment$CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5e

    .line 326
    :goto_20
    return-void

    .line 311
    :pswitch_21
    const-string v0, "dcbPinEntryConfirm"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->log(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v1, "dcbPinEntryConfirm"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPassword:Ljava/lang/String;

    .line 314
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->performNext()V

    goto :goto_20

    .line 317
    :pswitch_35
    const-string v0, "dcbPinEntryCancel"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->log(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v1, "dcbPinEntryCancel"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->cancel()V

    goto :goto_20

    .line 322
    :pswitch_47
    const-string v0, "Getting password info failed."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->fail(Ljava/lang/String;)V

    goto :goto_20

    .line 309
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_21
        :pswitch_35
        :pswitch_47
    .end packed-switch
.end method

.method public onCarrierTosResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;)V
    .registers 7
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 330
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->dismiss()V

    .line 331
    iput-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    .line 332
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$1;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$fragment$CarrierTosDialogFragment$CarrierTosResultListener$TosResult:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6a

    .line 350
    :goto_14
    return-void

    .line 334
    :pswitch_15
    const-string v0, "dcbTosChangedConfirm"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->log(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v1, "dcbTosChangedConfirm"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->ACCEPTED_CARRIER_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mTosVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 337
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mProvisioningAction:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterProvisioning;

    invoke-direct {v2, p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterProvisioning;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$1;)V

    new-instance v3, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterError;

    invoke-direct {v3, p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterError;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$1;)V

    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->ACCEPTED_CARRIER_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->forceRun(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_14

    .line 341
    :pswitch_42
    const-string v0, "Showing TOS to user failed."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->fail(Ljava/lang/String;)V

    goto :goto_14

    .line 345
    :pswitch_58
    const-string v0, "dcbTosChangedCancel"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->log(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v1, "dcbTosChangedCancel"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->cancel()V

    goto :goto_14

    .line 332
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_42
        :pswitch_58
    .end packed-switch
.end method

.method protected performNext()V
    .registers 11

    .prologue
    const v7, 0x7f07005f

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 160
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    sget-object v5, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->CHECK_CARRIER_TOS_VERSION:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    if-ne v4, v5, :cond_3d

    .line 162
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->showCarrierTos()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 163
    sget-object v4, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->CHECK_VALID_CREDENTIALS:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    iput-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    .line 164
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->performNext()V

    .line 262
    :cond_1a
    :goto_1a
    return-void

    .line 166
    :cond_1b
    sget-object v4, Lcom/google/android/finsky/billing/BillingPreferences;->ACCEPTED_CARRIER_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    .local v0, acceptedTosVersion:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTosVersion()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, currentTosVersion:Ljava/lang/String;
    if-eqz v0, :cond_31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 170
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->createAndShowTosFragment()V

    goto :goto_1a

    .line 173
    :cond_35
    sget-object v4, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->CHECK_VALID_CREDENTIALS:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    iput-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    .line 174
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->performNext()V

    goto :goto_1a

    .line 177
    .end local v0           #acceptedTosVersion:Ljava/lang/String;
    .end local v2           #currentTosVersion:Ljava/lang/String;
    :cond_3d
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    sget-object v5, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->CHECK_VALID_CREDENTIALS:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    if-ne v4, v5, :cond_ac

    .line 180
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->isPasswordRequired()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 181
    sget-object v4, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->PASSWORD_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    iput-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    .line 182
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->createAndShowPasswordFragment()V

    goto :goto_1a

    .line 188
    :cond_53
    const/4 v1, 0x0

    .line 189
    .local v1, credentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->perTransactionCredentialsRequired()Z

    move-result v4

    if-eqz v4, :cond_60

    iget-boolean v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mCredentialsCheckPerformed:Z

    if-eqz v4, :cond_66

    .line 190
    :cond_60
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v1

    .line 193
    :cond_66
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->credentialsStillValid(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;)Z

    move-result v4

    if-nez v4, :cond_a7

    .line 194
    iget-boolean v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mCredentialsCheckPerformed:Z

    if-eqz v4, :cond_83

    .line 196
    const-string v4, "Credentials already fetched once and still not valid."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->fail(Ljava/lang/String;)V

    goto :goto_1a

    .line 200
    :cond_83
    sget-object v4, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->CARRIER_CREDENTIALS_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    iput-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    .line 201
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mCredentialsAction:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;

    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getProvisioningId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterCredentials;

    invoke-direct {v6, p0, v9}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterCredentials;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$1;)V

    new-instance v7, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterError;

    invoke-direct {v7, p0, v9}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterError;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$1;)V

    invoke-virtual {v4, v5, v9, v6, v7}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;->run(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 203
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    if-eqz v4, :cond_1a

    .line 204
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->showProgressIndicator()V

    goto/16 :goto_1a

    .line 209
    :cond_a7
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->finish()V

    goto/16 :goto_1a

    .line 211
    .end local v1           #credentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    :cond_ac
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    sget-object v5, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->CHECK_VALID_PASSWORD:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    if-ne v4, v5, :cond_11c

    .line 212
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v1

    .line 213
    .restart local v1       #credentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->invalidPassword()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 214
    .local v3, invalidPassword:Ljava/lang/Boolean;
    if-eqz v3, :cond_f4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_f4

    .line 215
    const-string v4, "dcbPinEntryInvalid"

    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->log(Ljava/lang/String;)V

    .line 216
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v5, "dcbPinEntryInvalid"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    const v5, 0x7f07005c

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 220
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    if-eqz v4, :cond_ee

    .line 221
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->clearPasswordField()V

    .line 223
    :cond_ee
    sget-object v4, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->PASSWORD_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    iput-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    goto/16 :goto_1a

    .line 226
    :cond_f4
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    if-eqz v4, :cond_fd

    .line 227
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->dismiss()V

    .line 229
    :cond_fd
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->credentialsStillValid(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;)Z

    move-result v4

    if-eqz v4, :cond_108

    .line 231
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->finish()V

    goto/16 :goto_1a

    .line 233
    :cond_108
    const-string v4, "Valid password, but invalid credentials."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->fail(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 237
    .end local v1           #credentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    .end local v3           #invalidPassword:Ljava/lang/Boolean;
    :cond_11c
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    sget-object v5, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->CARRIER_CREDENTIALS_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    if-ne v4, v5, :cond_159

    .line 238
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v1

    .line 239
    .restart local v1       #credentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    sget-object v4, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->CHECK_VALID_CREDENTIALS:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    iput-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    .line 241
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->isProvisioned()Z

    move-result v4

    if-nez v4, :cond_154

    .line 243
    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mProvisioningAction:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

    new-instance v6, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterProvisioning;

    invoke-direct {v6, p0, v9}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterProvisioning;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$1;)V

    new-instance v7, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterError;

    invoke-direct {v7, p0, v9}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterError;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$1;)V

    sget-object v4, Lcom/google/android/finsky/billing/BillingPreferences;->ACCEPTED_CARRIER_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v4}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->forceRun(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 245
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    if-eqz v4, :cond_1a

    .line 246
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->showProgressIndicator()V

    goto/16 :goto_1a

    .line 249
    :cond_154
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->performNext()V

    goto/16 :goto_1a

    .line 251
    .end local v1           #credentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    :cond_159
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    sget-object v5, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->PASSWORD_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    if-ne v4, v5, :cond_185

    .line 253
    sget-object v4, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->CHECK_VALID_PASSWORD:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    iput-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    .line 254
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mCredentialsAction:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;

    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getProvisioningId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPassword:Ljava/lang/String;

    new-instance v7, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterCredentials;

    invoke-direct {v7, p0, v9}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterCredentials;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$1;)V

    new-instance v8, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterError;

    invoke-direct {v8, p0, v9}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterError;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$1;)V

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;->run(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 256
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    if-eqz v4, :cond_1a

    .line 257
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->showProgressIndicator()V

    goto/16 :goto_1a

    .line 260
    :cond_185
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public resumeFromSavedState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->CHECK_CARRIER_TOS_VERSION:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    if-eq v0, v1, :cond_c

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 125
    :cond_c
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    .line 126
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    if-nez v0, :cond_36

    .line 127
    :cond_20
    const-string v0, "Cannot run this BillingFlow since params or provisioning are null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->fail(Ljava/lang/String;)V

    .line 130
    :cond_36
    const-string v0, "tos_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 131
    const-string v0, "tos_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mTosVersion:Ljava/lang/String;

    .line 133
    :cond_46
    const-string v0, "tos_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "tos_fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    .line 136
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;)V

    .line 138
    :cond_5f
    const-string v0, "password_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "password_fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    .line 141
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;)V

    .line 143
    :cond_78
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "bundle"

    .prologue
    .line 147
    const-string v0, "state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mTosVersion:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 149
    const-string v0, "tos_version"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mTosVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_16
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    if-eqz v0, :cond_23

    .line 152
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "tos_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 154
    :cond_23
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    if-eqz v0, :cond_30

    .line 155
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "password_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 157
    :cond_30
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    if-nez v0, :cond_1f

    .line 113
    :cond_8
    const-string v0, "Cannot run this BillingFlow since params or provisioning are null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->fail(Ljava/lang/String;)V

    .line 118
    :goto_1e
    return-void

    .line 116
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->performNext()V

    goto :goto_1e
.end method
