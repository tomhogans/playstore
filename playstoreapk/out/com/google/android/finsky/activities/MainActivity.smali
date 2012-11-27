.class public Lcom/google/android/finsky/activities/MainActivity;
.super Lcom/google/android/finsky/activities/AuthenticatedActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/fragments/PageFragmentHost;


# static fields
.field private static sBillingInitialized:Z


# instance fields
.field private mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private final mHandler:Landroid/os/Handler;

.field private mLastShownErrorHash:I

.field private mMyCollectionItem:Landroid/view/MenuItem;

.field private mMyWishlistItem:Landroid/view/MenuItem;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mNotificationListener:Lcom/google/android/finsky/utils/NotificationListener;

.field private mPageNeedsRefresh:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSequenceNumberToDrainFrom:I

.field private final mStopPreviewsRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mPageNeedsRefresh:Z

    .line 195
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSequenceNumberToDrainFrom:I

    .line 197
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mHandler:Landroid/os/Handler;

    .line 199
    new-instance v0, Lcom/google/android/finsky/activities/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/MainActivity$1;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNotificationListener:Lcom/google/android/finsky/utils/NotificationListener;

    .line 238
    new-instance v0, Lcom/google/android/finsky/activities/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/MainActivity$2;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mStopPreviewsRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/MainActivity;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/activities/MainActivity;->showErrorDialogForCode(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/MainActivity;)Landroid/os/Bundle;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/finsky/activities/MainActivity;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/MainActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->handleIntent()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/MainActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->initializeBilling()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/MainActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->initializeBillingCountries()V

    return-void
.end method

.method private buildAnalyticsUrl(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
    .registers 6
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 368
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkHasPromoOffers(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 463
    new-instance v0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;-><init>(Lcom/google/android/finsky/activities/MainActivity;Lcom/google/android/finsky/api/DfeApi;)V

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->run(Ljava/lang/Runnable;)V

    .line 464
    return-void
.end method

.method private getCurrentBackend()I
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0}, Lcom/google/android/finsky/layout/CustomActionBar;->getCurrentBackendId()I

    move-result v0

    return v0
.end method

.method public static getMyDownloadsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 246
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.finsky.VIEW_MY_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private handleIntent()V
    .registers 18

    .prologue
    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    new-instance v2, Lcom/google/android/finsky/activities/MainActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/finsky/activities/MainActivity$3;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 290
    .local v13, currentIntent:Landroid/content/Intent;
    const-string v1, "authAccount"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 291
    .local v15, newAccountName:Ljava/lang/String;
    if-eqz v15, :cond_39

    .line 292
    const-string v1, "authAccount"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/finsky/activities/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 294
    const-string v1, "b/5160617: Switching account to %s due to intent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v15}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/activities/MainActivity;->switchAccount(Ljava/lang/String;)V

    .line 355
    :cond_38
    :goto_38
    return-void

    .line 300
    :cond_39
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/finsky/activities/MainActivity;->maybeShowErrorDialog(Landroid/content/Intent;)V

    .line 301
    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    .line 302
    .local v14, intentAction:Ljava/lang/String;
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 303
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/finsky/activities/MainActivity;->handleSearchIntent(Landroid/content/Intent;)V

    goto :goto_38

    .line 304
    :cond_50
    const-string v1, "com.google.android.finsky.NAVIGATIONAL_SUGGESTION"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 305
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/finsky/activities/MainActivity;->handleViewIntent(Landroid/content/Intent;)V

    goto :goto_38

    .line 306
    :cond_5e
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 308
    :cond_6e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    .line 309
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/finsky/activities/MainActivity;->handleViewIntent(Landroid/content/Intent;)V

    goto :goto_38

    .line 310
    :cond_7b
    const-string v1, "com.google.android.finsky.DETAILS"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v13}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "referrer_cookie"

    invoke-virtual {v13, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "referrer_url"

    invoke-virtual {v13, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 316
    :cond_9d
    const-string v1, "com.google.android.finsky.VIEW_MY_DOWNLOADS"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToMyDownloads(Lcom/google/android/finsky/api/model/DfeToc;)V

    goto/16 :goto_38

    .line 319
    :cond_bd
    const-string v1, "com.google.android.finsky.CORPUS_HOME"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_100

    .line 320
    const-string v1, "backend_id"

    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 322
    .local v4, backendId:I
    const-string v1, "title"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, title:Ljava/lang/String;
    const-string v1, "referrer_url"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 325
    .local v6, referrerUrl:Ljava/lang/String;
    if-nez v4, :cond_eb

    .line 326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 328
    :cond_eb
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v13}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToCorpusHome(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 331
    .end local v3           #title:Ljava/lang/String;
    .end local v4           #backendId:I
    .end local v6           #referrerUrl:Ljava/lang/String;
    :cond_100
    const-string v1, "com.google.android.finsky.VIEW_BROWSE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_143

    .line 332
    const-string v1, "backend_id"

    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 334
    .restart local v4       #backendId:I
    const-string v1, "title"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 335
    .restart local v3       #title:Ljava/lang/String;
    const-string v1, "referrer_url"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 336
    .restart local v6       #referrerUrl:Ljava/lang/String;
    invoke-virtual {v13}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v8

    .line 338
    .local v8, listUrl:Ljava/lang/String;
    const-string v1, "clear_back_stack"

    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 340
    .local v16, shouldClearBackStack:Z
    if-eqz v16, :cond_12f

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    .line 343
    :cond_12f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v12

    move-object v9, v3

    move v10, v4

    move-object v11, v6

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBrowse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V

    goto/16 :goto_38

    .line 347
    .end local v3           #title:Ljava/lang/String;
    .end local v4           #backendId:I
    .end local v6           #referrerUrl:Ljava/lang/String;
    .end local v8           #listUrl:Ljava/lang/String;
    .end local v16           #shouldClearBackStack:Z
    :cond_143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 349
    sget-boolean v1, Lcom/google/android/finsky/activities/MainActivity;->sSwitchToMyApps:Z

    if-eqz v1, :cond_38

    .line 351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToMyDownloads(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 352
    const/4 v1, 0x0

    sput-boolean v1, Lcom/google/android/finsky/activities/MainActivity;->sSwitchToMyApps:Z

    goto/16 :goto_38
.end method

.method private handleSearchIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 384
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->isTosAccepted()Z

    move-result v1

    if-nez v1, :cond_8

    .line 394
    :goto_7
    return-void

    .line 388
    :cond_8
    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, query:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->getCurrentBackend()I

    move-result v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToSearch(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_7
.end method

.method private handleViewIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter "currentIntent"

    .prologue
    const/4 v2, 0x0

    .line 358
    const-string v1, "deepLink"

    invoke-direct {p0, v1, p1}, Lcom/google/android/finsky/activities/MainActivity;->buildAnalyticsUrl(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, analyticsUrl:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    invoke-interface {v1, v2, v2, v0}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "dont_resolve_again"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 361
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 365
    :goto_2c
    return-void

    .line 363
    :cond_2d
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->handleDeepLink(Ljava/lang/String;)V

    goto :goto_2c
.end method

.method private initializeBilling()V
    .registers 3

    .prologue
    .line 435
    sget-boolean v0, Lcom/google/android/finsky/activities/MainActivity;->sBillingInitialized:Z

    if-eqz v0, :cond_5

    .line 460
    :goto_4
    return-void

    .line 438
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/finsky/activities/MainActivity;->sBillingInitialized:Z

    .line 439
    const-string v0, "Optimistically initializing billing parameters."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    new-instance v0, Lcom/google/android/finsky/activities/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/MainActivity$5;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->initializeCarrierBillingStorage(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method private initializeBillingCountries()V
    .registers 4

    .prologue
    .line 468
    new-instance v0, Lcom/google/android/finsky/billing/GetBillingCountriesAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;-><init>()V

    .line 469
    .local v0, gbca:Lcom/google/android/finsky/billing/GetBillingCountriesAction;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;->run(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 470
    return-void
.end method

.method private launchUrlInBrowser(Ljava/lang/String;)V
    .registers 6
    .parameter "url"

    .prologue
    .line 857
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 858
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 859
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.browser.application_id"

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 860
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 861
    return-void
.end method

.method private maybeShowErrorDialog(Landroid/content/Intent;)V
    .registers 8
    .parameter

    .prologue
    .line 920
    const-string v0, "error_html_message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 921
    const/4 v0, 0x0

    .line 922
    const-string v1, "error_title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 923
    const-string v0, "error_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 925
    :cond_17
    const-string v1, "error_html_message"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 926
    const-string v2, "error_doc_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 927
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 928
    iget v4, p0, Lcom/google/android/finsky/activities/MainActivity;->mLastShownErrorHash:I

    if-eq v4, v3, :cond_4c

    .line 929
    const-string v4, "error_return_code"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 931
    invoke-direct {p0, v0, v1, v4, v2}, Lcom/google/android/finsky/activities/MainActivity;->showErrorDialogForCode(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    .line 932
    iput v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mLastShownErrorHash:I

    .line 935
    :cond_4c
    return-void
.end method

.method private onMyCollectionSelected()V
    .registers 6

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 833
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->getCurrentBackend()I

    move-result v0

    .line 834
    .local v0, currentBackendId:I
    packed-switch v0, :pswitch_data_36

    .line 848
    :pswitch_b
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToMyDownloads(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 850
    :goto_18
    return-void

    .line 839
    :pswitch_19
    invoke-static {v2, v0}, Lcom/google/android/finsky/utils/IntentUtils;->isConsumptionAppInstalled(Landroid/content/pm/PackageManager;I)Z

    move-result v3

    if-nez v3, :cond_25

    .line 840
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showAppNeededDialog(I)V

    goto :goto_18

    .line 843
    :cond_25
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppLaunchIntent(Landroid/content/pm/PackageManager;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 845
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_18

    .line 834
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_19
        :pswitch_19
        :pswitch_b
        :pswitch_19
        :pswitch_b
        :pswitch_19
    .end packed-switch
.end method

.method private onMyWishlistSelected()V
    .registers 2

    .prologue
    .line 853
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToMyWishlist()V

    .line 854
    return-void
.end method

.method private redeemGiftCard()V
    .registers 4

    .prologue
    .line 864
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, accountName:Ljava/lang/String;
    if-nez v0, :cond_13

    .line 866
    const-string v1, "Redeem chosen with no current account."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 870
    :goto_12
    return-void

    .line 869
    :cond_13
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->getCurrentBackend()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->show(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_12
.end method

.method private setDebugActivityEnabled(Z)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 728
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 730
    if-eqz p1, :cond_13

    move v0, v1

    .line 735
    :goto_8
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/google/android/finsky/activities/DebugActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 736
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 737
    return-void

    .line 733
    :cond_13
    const/4 v0, 0x2

    goto :goto_8
.end method

.method private setupDcbDebugMenu(Landroid/view/Menu;)V
    .registers 4
    .parameter

    .prologue
    .line 889
    const v0, 0x7f08023b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 890
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 891
    new-instance v1, Lcom/google/android/finsky/activities/MainActivity$7;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/MainActivity$7;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 899
    return-void
.end method

.method private setupDebugMenu(Landroid/view/Menu;)V
    .registers 4
    .parameter

    .prologue
    .line 877
    const v0, 0x7f08023a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 878
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 879
    new-instance v1, Lcom/google/android/finsky/activities/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/MainActivity$6;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 886
    return-void
.end method

.method private showErrorDialogForCode(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 10
    .parameter "title"
    .parameter "htmlMessage"
    .parameter "returnCode"
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 903
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v4

    invoke-interface {v4, p4}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v1

    .line 904
    .local v1, packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    packed-switch p3, :pswitch_data_24

    .line 914
    :cond_11
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/finsky/activities/MainActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 915
    :goto_14
    return v2

    .line 906
    :pswitch_15
    if-eqz v1, :cond_22

    iget-boolean v4, v1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isSystemApp:Z

    if-eqz v4, :cond_22

    move v0, v2

    .line 907
    .local v0, isSystemApp:Z
    :goto_1c
    if-nez v0, :cond_11

    .line 908
    invoke-direct {p0, p4}, Lcom/google/android/finsky/activities/MainActivity;->showMismatchedCertificatesDialog(Ljava/lang/String;)V

    goto :goto_14

    .end local v0           #isSystemApp:Z
    :cond_22
    move v0, v3

    .line 906
    goto :goto_1c

    .line 904
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_15
    .end packed-switch
.end method

.method private showErrorMessage(Lcom/android/volley/VolleyError;)V
    .registers 5
    .parameter

    .prologue
    .line 982
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    if-eqz v0, :cond_10

    .line 983
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    .line 984
    if-eqz v0, :cond_10

    .line 985
    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->refreshOnResume()V

    .line 1022
    :goto_f
    return-void

    .line 990
    :cond_10
    instance-of v0, p1, Lcom/google/android/finsky/utils/BgDataDisabledError;

    if-eqz v0, :cond_18

    .line 991
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->showBackgroundDataDialog()V

    goto :goto_f

    .line 995
    :cond_18
    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    .line 996
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 997
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 998
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    const v0, 0x7f080126

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/MainActivity$8;

    invoke-direct {v1, p0, v2}, Lcom/google/android/finsky/activities/MainActivity$8;-><init>(Lcom/google/android/finsky/activities/MainActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_f
.end method

.method private showMismatchedCertificatesDialog(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 1030
    const v0, 0x7f0700c1

    const v1, 0x7f07019f

    const v2, 0x7f070107

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 1034
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1035
    const-string v2, "error_package_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 1037
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "mismatched_certificates"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1038
    return-void
.end method

.method private updateConsumptionAppMenu()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 741
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyCollectionItem:Landroid/view/MenuItem;

    if-nez v3, :cond_6

    .line 763
    :cond_5
    :goto_5
    return-void

    .line 748
    :cond_6
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v1

    .line 750
    .local v1, currentPageType:I
    iget-object v5, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyCollectionItem:Landroid/view/MenuItem;

    const/4 v3, 0x3

    if-eq v1, v3, :cond_31

    const/4 v3, 0x1

    :goto_12
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 751
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyCollectionItem:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 752
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->getCurrentBackend()I

    move-result v0

    .line 753
    .local v0, currentBackendId:I
    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusMyCollectionDescription(I)Ljava/lang/String;

    move-result-object v2

    .line 755
    .local v2, myCollectionDescription:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 756
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyCollectionItem:Landroid/view/MenuItem;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    .end local v0           #currentBackendId:I
    .end local v2           #myCollectionDescription:Ljava/lang/String;
    :cond_31
    move v3, v4

    .line 750
    goto :goto_12

    .line 758
    .restart local v0       #currentBackendId:I
    .restart local v2       #myCollectionDescription:Ljava/lang/String;
    :cond_33
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyCollectionItem:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 759
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyCollectionItem:Landroid/view/MenuItem;

    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusMyCollectionIcon(I)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_5
.end method

.method private updateWishlistAppMenu()V
    .registers 4

    .prologue
    .line 766
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyWishlistItem:Landroid/view/MenuItem;

    if-nez v1, :cond_5

    .line 772
    :goto_4
    return-void

    .line 770
    :cond_5
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v0

    .line 771
    .local v0, currentPageType:I
    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyWishlistItem:Landroid/view/MenuItem;

    const/16 v1, 0xa

    if-eq v0, v1, :cond_16

    const/4 v1, 0x1

    :goto_12
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_16
    const/4 v1, 0x0

    goto :goto_12
.end method


# virtual methods
.method public getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;
    .registers 2

    .prologue
    .line 537
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    return-object v0
.end method

.method public getCustomActionBar()Lcom/google/android/finsky/layout/CustomActionBar;
    .registers 2

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    return-object v0
.end method

.method public getDfeApi()Lcom/google/android/finsky/api/DfeApi;
    .registers 2

    .prologue
    .line 532
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method public goBack()V
    .registers 1

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->onBackPressed()V

    .line 505
    return-void
.end method

.method protected handleAuthenticationError(Lcom/android/volley/VolleyError;)V
    .registers 6
    .parameter "error"

    .prologue
    .line 965
    instance-of v2, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v2, :cond_11

    move-object v0, p1

    .line 966
    check-cast v0, Lcom/android/volley/AuthFailureError;

    .line 967
    .local v0, authFailure:Lcom/android/volley/AuthFailureError;
    invoke-virtual {v0}, Lcom/android/volley/AuthFailureError;->getResolutionIntent()Landroid/content/Intent;

    move-result-object v1

    .line 968
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_11

    .line 969
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/MainActivity;->handleUserAuthentication(Landroid/content/Intent;)V

    .line 979
    .end local v0           #authFailure:Lcom/android/volley/AuthFailureError;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_10
    return-void

    .line 974
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->hideLoadingIndicator()V

    .line 977
    const v2, 0x7f080038

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 978
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/MainActivity;->showErrorMessage(Lcom/android/volley/VolleyError;)V

    goto :goto_10
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 14
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v9, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 596
    const/16 v7, 0x1f

    if-ne p1, v7, :cond_17

    const/16 v7, 0x28

    if-ne p2, v7, :cond_17

    .line 599
    const-string v7, "b/5160617: Reinitialize with null accountafter user changed content level"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v5}, Lcom/google/android/finsky/activities/MainActivity;->reinitialize(Landroid/accounts/Account;Z)V

    .line 647
    :goto_16
    return-void

    .line 603
    :cond_17
    const/16 v7, 0x21

    if-ne p1, v7, :cond_70

    .line 604
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "requested_doc_id"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 605
    .local v1, requestedDocId:Ljava/lang/String;
    const/4 v0, 0x0

    .line 607
    .local v0, purchasedDocId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 608
    .local v4, wasDirectPurchase:Z
    if-eqz p3, :cond_36

    .line 609
    const-string v7, "finsky.is_direct_link_purchase"

    invoke-virtual {p3, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 611
    const-string v7, "requested_doc_id"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    const/4 p3, 0x0

    .line 614
    :cond_36
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "use_direct_purchase"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 615
    .local v3, skipRequested:Z
    if-eqz v1, :cond_63

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    move v2, v5

    .line 617
    .local v2, sameDoc:Z
    :goto_49
    if-ne p2, v9, :cond_65

    if-eqz v4, :cond_65

    if-eqz v2, :cond_65

    .line 623
    const v6, 0x7f070066

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 624
    invoke-virtual {p0, v9}, Lcom/google/android/finsky/activities/MainActivity;->setResult(I)V

    .line 625
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->finish()V

    .line 646
    .end local v0           #purchasedDocId:Ljava/lang/String;
    .end local v1           #requestedDocId:Ljava/lang/String;
    .end local v2           #sameDoc:Z
    .end local v3           #skipRequested:Z
    .end local v4           #wasDirectPurchase:Z
    :cond_5f
    :goto_5f
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_16

    .restart local v0       #purchasedDocId:Ljava/lang/String;
    .restart local v1       #requestedDocId:Ljava/lang/String;
    .restart local v3       #skipRequested:Z
    .restart local v4       #wasDirectPurchase:Z
    :cond_63
    move v2, v6

    .line 615
    goto :goto_49

    .line 626
    .restart local v2       #sameDoc:Z
    :cond_65
    if-nez p2, :cond_5f

    if-eqz v3, :cond_5f

    .line 631
    invoke-virtual {p0, v6}, Lcom/google/android/finsky/activities/MainActivity;->setResult(I)V

    .line 632
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->finish()V

    goto :goto_5f

    .line 634
    .end local v0           #purchasedDocId:Ljava/lang/String;
    .end local v1           #requestedDocId:Ljava/lang/String;
    .end local v2           #sameDoc:Z
    .end local v3           #skipRequested:Z
    .end local v4           #wasDirectPurchase:Z
    :cond_70
    const/16 v6, 0x22

    if-ne p1, v6, :cond_5f

    .line 635
    if-ne p2, v9, :cond_5f

    .line 639
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/google/android/finsky/api/DfeApi;->invalidatePlusProfile(Z)V

    .line 640
    sget-object v6, Lcom/google/android/finsky/utils/FinskyPreferences;->acceptedPlusReviews:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_5f
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBack()Z

    move-result v0

    if-nez v0, :cond_b

    .line 677
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onBackPressed()V

    .line 679
    :cond_b
    return-void
.end method

.method protected onCleanup()V
    .registers 11

    .prologue
    .line 546
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/FinskyApp;->drainAllRequests(I)V

    .line 549
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/FinskyApp;->clearCacheAsync(Ljava/lang/Runnable;)V

    .line 551
    iget-boolean v8, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    if-nez v8, :cond_59

    .line 552
    iget-object v8, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    .line 558
    iget-object v8, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->flush()Z

    .line 563
    :goto_29
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const v9, 0x7f080037

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 564
    .local v5, contentFrame:Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 565
    .local v1, childCount:I
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 566
    .local v4, childrenToRemove:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3f
    if-ge v6, v1, :cond_62

    .line 567
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 568
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    .line 569
    .local v2, childId:I
    const v8, 0x7f080038

    if-eq v2, v8, :cond_56

    const v8, 0x7f080039

    if-eq v2, v8, :cond_56

    .line 571
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_56
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    .line 560
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childCount:I
    .end local v2           #childId:I
    .end local v4           #childrenToRemove:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    .end local v5           #contentFrame:Landroid/view/ViewGroup;
    .end local v6           #i:I
    :cond_59
    const-string v8, "Unable to clear NavigationManager as state has been saved."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_29

    .line 574
    .restart local v1       #childCount:I
    .restart local v4       #childrenToRemove:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    .restart local v5       #contentFrame:Landroid/view/ViewGroup;
    .restart local v6       #i:I
    :cond_62
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_66
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_76

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 575
    .local v3, childToRemove:Landroid/view/View;
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_66

    .line 577
    .end local v3           #childToRemove:Landroid/view/View;
    :cond_76
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->showLoadingIndicator()V

    .line 578
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 253
    const v0, 0x7f040098

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->setContentView(I)V

    .line 254
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 255
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->init(Lcom/google/android/finsky/activities/MainActivity;)V

    .line 257
    if-eqz p1, :cond_1e

    .line 258
    const-string v0, "last_shown_error_hash"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mLastShownErrorHash:I

    .line 260
    :cond_1e
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 262
    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    .line 263
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-interface {v0, v1, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V

    .line 266
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->setDefaultKeyMode(I)V

    .line 267
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 683
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 684
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 685
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 686
    const/high16 v1, 0x7f0f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 687
    sget-object v1, Lcom/google/android/finsky/config/G;->wishlistEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 688
    const v1, 0x7f0f0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 690
    :cond_26
    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 691
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v1, p0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->configureMenu(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 693
    const v1, 0x7f08023c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyCollectionItem:Landroid/view/MenuItem;

    .line 694
    const v1, 0x7f08023f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyWishlistItem:Landroid/view/MenuItem;

    .line 696
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->updateConsumptionAppMenu()V

    .line 697
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->updateWishlistAppMenu()V

    .line 699
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->terminate()V

    .line 652
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onDestroy()V

    .line 653
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 776
    .line 777
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_72

    .line 807
    :pswitch_a
    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    .line 810
    :goto_e
    return v1

    .line 779
    :pswitch_f
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->onMyCollectionSelected()V

    goto :goto_e

    .line 782
    :pswitch_13
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->onMyWishlistSelected()V

    goto :goto_e

    .line 785
    :pswitch_17
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const-class v3, Lcom/google/android/finsky/activities/SettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 786
    const/16 v2, 0x1f

    invoke-virtual {p0, v0, v2}, Lcom/google/android/finsky/activities/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 789
    :pswitch_28
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->redeemGiftCard()V

    goto :goto_e

    .line 792
    :pswitch_2c
    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_36

    move v0, v1

    :cond_36
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->chooseAccount(Z)V

    goto :goto_e

    .line 796
    :pswitch_3a
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    const-string v3, "help"

    invoke-interface {v2, v4, v4, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    const-string v3, "help"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 798
    sget-object v0, Lcom/google/android/finsky/config/G;->vendingSupportUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 799
    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingUtils;->replaceLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 800
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->launchUrlInBrowser(Ljava/lang/String;)V

    goto :goto_e

    .line 803
    :pswitch_66
    sget-object v0, Lcom/google/android/finsky/config/G;->extraMenuItemUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 804
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->launchUrlInBrowser(Ljava/lang/String;)V

    goto :goto_e

    .line 777
    :pswitch_data_72
    .packed-switch 0x7f080234
        :pswitch_28
        :pswitch_2c
        :pswitch_17
        :pswitch_3a
        :pswitch_66
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_f
        :pswitch_a
        :pswitch_a
        :pswitch_13
    .end packed-switch
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1055
    packed-switch p1, :pswitch_data_16

    .line 1061
    :goto_3
    return-void

    .line 1057
    :pswitch_4
    const-string v0, "error_package_name"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1058
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/finsky/receivers/Installer;->uninstallAssetSilently(Ljava/lang/String;)V

    goto :goto_3

    .line 1055
    :pswitch_data_16
    .packed-switch 0x20
        :pswitch_4
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 582
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 583
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    if-nez v0, :cond_b

    .line 586
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->handleIntent()V

    .line 592
    :goto_a
    return-void

    .line 589
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    .line 590
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_a
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 815
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_20

    .line 826
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 817
    :sswitch_d
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goUp()V

    goto :goto_c

    .line 820
    :sswitch_13
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v1, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->wishlistButtonClicked(Landroid/app/Activity;)V

    goto :goto_c

    .line 823
    :sswitch_19
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v1, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->shareButtonClicked(Landroid/app/Activity;)V

    goto :goto_c

    .line 815
    nop

    :sswitch_data_20
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f08000f -> :sswitch_13
        0x7f080010 -> :sswitch_19
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 519
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onPause()V

    .line 520
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/utils/Notifier;->setNotificationListener(Lcom/google/android/finsky/utils/NotificationListener;)V

    .line 521
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSequenceNumberToDrainFrom:I

    .line 522
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .registers 4
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    if-eqz v0, :cond_9

    .line 1046
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->onPositiveClick(ILandroid/os/Bundle;)V

    .line 1048
    :cond_9
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    .line 704
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 707
    sget-object v2, Lcom/google/android/finsky/config/G;->extraMenuItemTitle:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 708
    .local v1, extraMenuItemTitle:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 709
    const v2, 0x7f080238

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 710
    .local v0, extraItem:Landroid/view/MenuItem;
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 711
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 713
    .end local v0           #extraItem:Landroid/view/MenuItem;
    :cond_1f
    const v2, 0x7f080234

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    sget-object v2, Lcom/google/android/finsky/config/G;->enableRedeemGiftCardMenu:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 715
    sget-object v2, Lcom/google/android/finsky/config/G;->debugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/MainActivity;->setDebugActivityEnabled(Z)V

    .line 718
    sget-object v2, Lcom/google/android/finsky/config/G;->debugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 719
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/MainActivity;->setupDebugMenu(Landroid/view/Menu;)V

    .line 721
    :cond_55
    sget-object v2, Lcom/google/android/finsky/config/G;->dcbDebugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 722
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/MainActivity;->setupDcbDebugMenu(Landroid/view/Menu;)V

    .line 724
    :cond_66
    return v4
.end method

.method protected onReady(Z)V
    .registers 3
    .parameter "shouldHandleIntent"

    .prologue
    .line 402
    new-instance v0, Lcom/google/android/finsky/activities/MainActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/activities/MainActivity$4;-><init>(Lcom/google/android/finsky/activities/MainActivity;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->checkHasPromoOffers(Ljava/lang/Runnable;)V

    .line 422
    return-void
.end method

.method protected onRestart()V
    .registers 2

    .prologue
    .line 526
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onRestart()V

    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mPageNeedsRefresh:Z

    .line 528
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 509
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onResume()V

    .line 510
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mPageNeedsRefresh:Z

    if-eqz v0, :cond_f

    .line 511
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->refreshPage()V

    .line 512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mPageNeedsRefresh:Z

    .line 514
    :cond_f
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNotificationListener:Lcom/google/android/finsky/utils/NotificationListener;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/utils/Notifier;->setNotificationListener(Lcom/google/android/finsky/utils/NotificationListener;)V

    .line 515
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mStopPreviewsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 272
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_14

    .line 477
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 481
    :goto_9
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 482
    const-string v0, "last_shown_error_hash"

    iget v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mLastShownErrorHash:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 483
    return-void

    .line 479
    :cond_14
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->serialize(Landroid/os/Bundle;)V

    goto :goto_9
.end method

.method public onSearchRequested()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1069
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->isTosAccepted()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1070
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getCustomActionBar()Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->searchButtonClicked(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onSearchRequested()Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_17
    const/4 v0, 0x1

    .line 1072
    :cond_18
    return v0
.end method

.method protected onStop()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 657
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onStop()V

    .line 662
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mStopPreviewsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 666
    iget v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSequenceNumberToDrainFrom:I

    if-ne v0, v2, :cond_23

    .line 667
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->drainAllRequests(I)V

    .line 672
    :goto_22
    return-void

    .line 669
    :cond_23
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mSequenceNumberToDrainFrom:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->drainAllRequests(I)V

    .line 670
    iput v2, p0, Lcom/google/android/finsky/activities/MainActivity;->mSequenceNumberToDrainFrom:I

    goto :goto_22
.end method

.method public showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 945
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 946
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    if-eqz v0, :cond_1c

    .line 950
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 951
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    .line 952
    if-eqz v0, :cond_1b

    .line 953
    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->refreshOnResume()V

    .line 961
    :cond_1b
    :goto_1b
    return-void

    .line 956
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p3}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    goto :goto_1b

    .line 959
    :cond_25
    const-string v0, "Unknown error with empty error message."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method public updateBreadcrumb(Ljava/lang/String;)V
    .registers 3
    .parameter "breadcrumb"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method public updateCurrentBackendId(I)V
    .registers 3
    .parameter "backend"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    .line 498
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->updateConsumptionAppMenu()V

    .line 499
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->updateWishlistAppMenu()V

    .line 500
    return-void
.end method
