.class public Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;
.super Lcom/google/android/finsky/activities/myapps/MyAppsTab;
.source "MyAppsLibraryTab.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/activities/myapps/MyAppsTab",
        "<",
        "Lcom/google/android/finsky/api/model/DfeList;",
        ">;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# static fields
.field public static final SUPPORTS_MULTI_CHOICE:Z


# instance fields
.field private final mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

.field private final mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

.field private mCurrentActionMode:Landroid/view/ActionMode;

.field private final mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

.field private final mIsTwoColumnLayout:Z

.field private mLibraryView:Landroid/view/ViewGroup;

.field private mListInitialized:Z

.field private mListView:Landroid/widget/ListView;

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->SUPPORTS_MULTI_CHOICE:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/AccountLibrary;Landroid/os/Bundle;)V
    .registers 19
    .parameter "context"
    .parameter "fragment"
    .parameter "navigationManager"
    .parameter "bitmapLoader"
    .parameter "dfeApi"
    .parameter "detailsOpener"
    .parameter "toc"
    .parameter "accountLibrary"
    .parameter "state"

    .prologue
    .line 69
    move-object/from16 v0, p9

    invoke-direct {p0, p1, p5, p6, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Landroid/os/Bundle;)V

    .line 57
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListInitialized:Z

    .line 70
    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    .line 71
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 72
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    .line 73
    iput-object p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mIsTwoColumnLayout:Z

    .line 77
    new-instance v6, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$1;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$1;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)V

    .line 83
    .local v6, onActionListener:Lcom/google/android/finsky/layout/OverviewBucketEntry$OnActionListener;
    new-instance v1, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mContext:Landroid/content/Context;

    iget-boolean v8, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mIsTwoColumnLayout:Z

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/view/View$OnClickListener;Lcom/google/android/finsky/layout/OverviewBucketEntry$OnActionListener;Landroid/view/View$OnLongClickListener;Z)V

    iput-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    .line 85
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mIsTwoColumnLayout:Z

    if-nez v1, :cond_3e

    .line 86
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->showAccountSwitcher()V

    .line 88
    :cond_3e
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)Lcom/google/android/finsky/api/model/DfeToc;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mCurrentActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method private configureNoAppsUi()V
    .registers 9

    .prologue
    const/16 v7, 0x8

    .line 134
    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    const v6, 0x7f080113

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/AccountSelectorView;

    .line 136
    .local v0, accountNameView:Lcom/google/android/finsky/layout/AccountSelectorView;
    iget-boolean v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mIsTwoColumnLayout:Z

    if-eqz v5, :cond_46

    .line 137
    invoke-virtual {v0, v7}, Lcom/google/android/finsky/layout/AccountSelectorView;->setVisibility(I)V

    .line 143
    :goto_14
    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    const v6, 0x7f080115

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 144
    .local v1, appBrowsing:Landroid/view/View;
    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    if-nez v5, :cond_4e

    const/4 v2, 0x0

    .line 146
    .local v2, appCorpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :goto_22
    if-nez v2, :cond_56

    .line 147
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 160
    :goto_27
    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    const v6, 0x7f080116

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 161
    .local v3, gamesBrowsing:Landroid/view/View;
    sget-object v5, Lcom/google/android/finsky/config/G;->gamesBrowseUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 162
    .local v4, gamesUrl:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    if-eqz v5, :cond_42

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 163
    :cond_42
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :goto_45
    return-void

    .line 139
    .end local v1           #appBrowsing:Landroid/view/View;
    .end local v2           #appCorpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .end local v3           #gamesBrowsing:Landroid/view/View;
    .end local v4           #gamesUrl:Ljava/lang/String;
    :cond_46
    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/layout/AccountSelectorView;->configure(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    goto :goto_14

    .line 144
    .restart local v1       #appBrowsing:Landroid/view/View;
    :cond_4e
    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v2

    goto :goto_22

    .line 149
    .restart local v2       #appCorpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_56
    new-instance v5, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$2;

    invoke-direct {v5, p0, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$2;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_27

    .line 165
    .restart local v3       #gamesBrowsing:Landroid/view/View;
    .restart local v4       #gamesUrl:Ljava/lang/String;
    :cond_5f
    new-instance v5, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$3;

    invoke-direct {v5, p0, v4}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$3;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_45
.end method

.method private getLibraryList()Lcom/google/android/finsky/api/model/DfeList;
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 187
    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    sget-object v5, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/library/AccountLibrary;->getServerToken(Ljava/lang/String;)[B

    move-result-object v0

    .line 188
    .local v0, appsToken:[B
    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    const/4 v5, 0x3

    sget-object v6, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7, v0}, Lcom/google/android/finsky/api/DfeApi;->getLibraryUrl(ILjava/lang/String;I[B)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, libraryUrl:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v4, :cond_3b

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v5, "MyAppsLibraryTab.ListData"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 193
    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v5, "MyAppsLibraryTab.ListData"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/DfeList;

    .line 194
    .local v1, dfeList:Lcom/google/android/finsky/api/model/DfeList;
    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getInitialUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 195
    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/api/model/DfeList;->setDfeApi(Lcom/google/android/finsky/api/DfeApi;)V

    move-object v2, v1

    .line 201
    .end local v1           #dfeList:Lcom/google/android/finsky/api/model/DfeList;
    .local v2, dfeList:Ljava/lang/Object;
    :goto_3a
    return-object v2

    .line 199
    .end local v2           #dfeList:Ljava/lang/Object;
    :cond_3b
    new-instance v1, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {v1, v4, v3, v7}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    .line 200
    .restart local v1       #dfeList:Lcom/google/android/finsky/api/model/DfeList;
    sget-object v4, Lcom/google/android/finsky/config/G;->gmsCorePackageName:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/api/model/DfeList;->filterDocId(Ljava/lang/String;)V

    move-object v2, v1

    .line 201
    .restart local v2       #dfeList:Ljava/lang/Object;
    goto :goto_3a
.end method


# virtual methods
.method protected getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    return-object v0
.end method

.method protected getDocumentForView(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;
    .registers 3
    .parameter "view"

    .prologue
    .line 206
    invoke-static {p1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getViewDoc(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    return-object v0
.end method

.method protected getFullView()Landroid/view/View;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .registers 5
    .parameter "backendId"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    if-nez v0, :cond_12

    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04009e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    .line 95
    :cond_12
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDataChanged()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 100
    invoke-super {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->onDataChanged()V

    .line 101
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListInitialized:Z

    if-nez v0, :cond_4f

    .line 102
    iput-boolean v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListInitialized:Z

    .line 103
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    const v1, 0x7f080179

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 106
    sget-boolean v0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->SUPPORTS_MULTI_CHOICE:Z

    if-eqz v0, :cond_32

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 109
    :cond_32
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mUseTwoColumnLayout:Z

    if-eqz v0, :cond_3b

    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 113
    :cond_3b
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->configureNoAppsUi()V

    .line 114
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    const v2, 0x7f080112

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->restoreTabSelection()V

    .line 117
    :cond_4f
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->syncViewToState()V

    .line 118
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->onDataChanged()V

    .line 119
    return-void
.end method

.method public onInstallPackageEvent(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .registers 5
    .parameter "packageName"
    .parameter "event"
    .parameter "statusCode"

    .prologue
    .line 226
    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    if-eq p2, v0, :cond_8

    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->UNINSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    if-ne p2, v0, :cond_d

    .line 228
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->notifyDataSetChanged()V

    .line 230
    :cond_d
    return-void
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .registers 4
    .parameter "library"

    .prologue
    .line 234
    invoke-virtual {p1}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 235
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->requestData()V

    .line 237
    :cond_17
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 252
    sget-boolean v2, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->SUPPORTS_MULTI_CHOICE:Z

    if-eqz v2, :cond_18

    .line 253
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 254
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 255
    .local v0, position:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_17

    .line 256
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 260
    .end local v0           #position:I
    :cond_17
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 241
    invoke-super {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 243
    .local v0, result:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v1, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 244
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v3, "MyAppsLibraryTab.ListData"

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 247
    :cond_1d
    return-object v0
.end method

.method protected requestData()V
    .registers 3

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->clearState()V

    .line 179
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->getLibraryList()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    .line 180
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 181
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 182
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 183
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->setDfeList(Lcom/google/android/finsky/api/model/DfeList;)V

    .line 184
    return-void
.end method

.method protected retryFromError()V
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->resetItems()V

    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->clearTransientState()V

    .line 130
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 131
    return-void
.end method

.method public setTabSelected(Z)V
    .registers 3
    .parameter "isSelected"

    .prologue
    .line 265
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->setTabSelected(Z)V

    .line 266
    if-nez p1, :cond_e

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mCurrentActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_e

    .line 267
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mCurrentActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 269
    :cond_e
    return-void
.end method
