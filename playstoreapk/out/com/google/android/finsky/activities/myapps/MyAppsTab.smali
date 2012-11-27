.class public abstract Lcom/google/android/finsky/activities/myapps/MyAppsTab;
.super Ljava/lang/Object;
.source "MyAppsTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/activities/ViewPagerTab;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;
.implements Lcom/google/android/finsky/installer/InstallerListener;
.implements Lcom/google/android/finsky/library/Libraries$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/finsky/api/model/DfeModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/finsky/activities/ViewPagerTab;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/google/android/finsky/api/model/OnDataChangedListener;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/google/android/finsky/library/Libraries$Listener;",
        "Lcom/google/android/finsky/installer/InstallerListener;"
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mDetailsOpener:Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;

.field protected final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field protected mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private mIsSelectedTab:Z

.field private mLastVolleyError:Lcom/android/volley/VolleyError;

.field protected final mLayoutInflater:Landroid/view/LayoutInflater;

.field protected final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field protected final mSavedInstanceState:Landroid/os/Bundle;

.field protected final mUseTwoColumnLayout:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Landroid/os/Bundle;)V
    .registers 7
    .parameter "context"
    .parameter "dfeApi"
    .parameter "detailsOpener"
    .parameter "state"

    .prologue
    .line 56
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mIsSelectedTab:Z

    .line 57
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 59
    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 60
    iput-object p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDetailsOpener:Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;

    .line 62
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    .line 63
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/receivers/Installer;->addListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    .line 65
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mUseTwoColumnLayout:Z

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    .line 71
    if-eqz p4, :cond_4b

    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 74
    :cond_4b
    return-void
.end method

.method private final getKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "suffix"

    .prologue
    .line 227
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeDefaultSelection()V
    .registers 7

    .prologue
    .line 266
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 267
    .local v4, listView:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;

    move-result-object v0

    .line 268
    .local v0, adapter:Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;
    if-eqz v4, :cond_3a

    .line 269
    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    .line 270
    .local v2, checkedItemPosition:I
    invoke-interface {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getCount()I

    move-result v5

    if-lt v2, v5, :cond_1a

    .line 273
    invoke-interface {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 276
    :cond_1a
    if-ltz v2, :cond_3a

    .line 277
    invoke-interface {v0, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getDocument(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    .line 278
    .local v1, checkedDoc:Lcom/google/android/finsky/api/model/Document;
    if-nez v1, :cond_36

    .line 282
    move v3, v2

    .local v3, i:I
    :goto_23
    invoke-interface {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_3a

    .line 283
    invoke-interface {v0, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 284
    invoke-direct {p0, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->selectDocumentAtPosition(I)V

    .line 302
    .end local v1           #checkedDoc:Lcom/google/android/finsky/api/model/Document;
    .end local v2           #checkedItemPosition:I
    .end local v3           #i:I
    :cond_32
    :goto_32
    return-void

    .line 282
    .restart local v1       #checkedDoc:Lcom/google/android/finsky/api/model/Document;
    .restart local v2       #checkedItemPosition:I
    .restart local v3       #i:I
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 289
    .end local v3           #i:I
    :cond_36
    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->selectDocumentAtPosition(I)V

    goto :goto_32

    .line 296
    .end local v1           #checkedDoc:Lcom/google/android/finsky/api/model/Document;
    .end local v2           #checkedItemPosition:I
    :cond_3a
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3b
    invoke-interface {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_32

    .line 297
    invoke-interface {v0, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4b

    .line 298
    invoke-direct {p0, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->selectDocumentAtPosition(I)V

    goto :goto_32

    .line 296
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b
.end method

.method private saveCurrentSelection()V
    .registers 6

    .prologue
    .line 231
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v2

    if-nez v2, :cond_7

    .line 243
    :cond_6
    :goto_6
    return-void

    .line 235
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 236
    .local v0, currentPosition:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 238
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getDocument(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    .line 239
    .local v1, document:Lcom/google/android/finsky/api/model/Document;
    if-eqz v1, :cond_6

    .line 240
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v3, "checked_document_id"

    invoke-direct {p0, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private selectDocument(Ljava/lang/String;)V
    .registers 5
    .parameter "documentId"

    .prologue
    .line 305
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_7

    .line 320
    :goto_6
    return-void

    .line 310
    :cond_7
    const/4 v1, 0x0

    .local v1, position:I
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 311
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getDocument(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 312
    .local v0, document:Lcom/google/android/finsky/api/model/Document;
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 313
    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->selectDocumentAtPosition(I)V

    goto :goto_6

    .line 310
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 319
    .end local v0           #document:Lcom/google/android/finsky/api/model/Document;
    :cond_2d
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->makeDefaultSelection()V

    goto :goto_6
.end method

.method private selectDocumentAtPosition(I)V
    .registers 5
    .parameter "position"

    .prologue
    .line 323
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getDocument(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 324
    .local v0, document:Lcom/google/android/finsky/api/model/Document;
    if-eqz v0, :cond_1a

    .line 325
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDetailsOpener:Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;->openDocDetails(Lcom/google/android/finsky/api/model/Document;)V

    .line 326
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 327
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->saveCurrentSelection()V

    .line 329
    :cond_1a
    return-void
.end method


# virtual methods
.method protected clearState()V
    .registers 2

    .prologue
    .line 105
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    if-eqz v0, :cond_11

    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeModel;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeModel;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    .line 110
    :cond_11
    return-void
.end method

.method protected abstract getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;
.end method

.method protected abstract getDocumentForView(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;
.end method

.method protected abstract getFullView()Landroid/view/View;
.end method

.method protected abstract getListView()Landroid/widget/ListView;
.end method

.method protected getPositionForView(Landroid/view/View;)I
    .registers 8
    .parameter "view"

    .prologue
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    const/4 v4, -0x1

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getDocumentForView(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 127
    .local v0, doc:Lcom/google/android/finsky/api/model/Document;
    if-nez v0, :cond_8

    .line 150
    :cond_7
    :goto_7
    return v4

    .line 133
    :cond_8
    move-object v3, p1

    .line 134
    .local v3, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 136
    .local v1, listView:Landroid/widget/ListView;
    :goto_d
    if-eqz v3, :cond_7

    .line 139
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 140
    .local v2, parent:Landroid/view/ViewParent;
    if-ne v2, v1, :cond_1a

    .line 150
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    goto :goto_7

    .line 144
    :cond_1a
    instance-of v5, v2, Landroid/view/View;

    if-eqz v5, :cond_7

    move-object v3, v2

    .line 147
    check-cast v3, Landroid/view/View;

    .line 148
    goto :goto_d
.end method

.method protected final isDataReady()Z
    .registers 2

    .prologue
    .line 94
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeModel;->isReady()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method final loadData()V
    .registers 2

    .prologue
    .line 98
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->requestData()V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 100
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->onDataChanged()V

    .line 102
    :cond_c
    return-void
.end method

.method public onAllLibrariesLoaded()V
    .registers 1

    .prologue
    .line 224
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 114
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 115
    .local v0, listView:Landroid/widget/ListView;
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 116
    .local v1, position:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1c

    .line 117
    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1f

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-nez v2, :cond_1d

    const/4 v2, 0x1

    :goto_19
    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 123
    :cond_1c
    :goto_1c
    return-void

    .line 118
    :cond_1d
    const/4 v2, 0x0

    goto :goto_19

    .line 120
    :cond_1f
    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->selectDocumentAtPosition(I)V

    goto :goto_1c
.end method

.method public onDataChanged()V
    .registers 2

    .prologue
    .line 196
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLastVolleyError:Lcom/android/volley/VolleyError;

    .line 197
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 78
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->clearState()V

    .line 79
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/receivers/Installer;->removeListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 81
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .parameter "error"

    .prologue
    .line 190
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLastVolleyError:Lcom/android/volley/VolleyError;

    .line 191
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->syncViewToState()V

    .line 192
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 201
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 215
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->saveCurrentSelection()V

    .line 216
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 217
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "MyAppsTab.ListParcelKey"

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 219
    :cond_18
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method protected abstract requestData()V
.end method

.method protected restoreTabSelection()V
    .registers 4

    .prologue
    .line 246
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "MyAppsTab.ListParcelKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 248
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "MyAppsTab.ListParcelKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 250
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "MyAppsTab.ListParcelKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 253
    :cond_2c
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mIsSelectedTab:Z

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mUseTwoColumnLayout:Z

    if-nez v0, :cond_35

    .line 262
    :cond_34
    :goto_34
    return-void

    .line 257
    :cond_35
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "checked_document_id"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 258
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "checked_document_id"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->selectDocument(Ljava/lang/String;)V

    goto :goto_34

    .line 260
    :cond_53
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->makeDefaultSelection()V

    goto :goto_34
.end method

.method protected abstract retryFromError()V
.end method

.method public setTabSelected(Z)V
    .registers 2
    .parameter "isSelected"

    .prologue
    .line 205
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mIsSelectedTab:Z

    .line 206
    if-eqz p1, :cond_8

    .line 207
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->restoreTabSelection()V

    .line 211
    :goto_7
    return-void

    .line 209
    :cond_8
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->saveCurrentSelection()V

    goto :goto_7
.end method

.method protected syncViewToState()V
    .registers 9

    .prologue
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 154
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getFullView()Landroid/view/View;

    move-result-object v3

    .line 156
    .local v3, fullView:Landroid/view/View;
    const v5, 0x7f080080

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 157
    .local v4, loadingIndicator:Landroid/view/View;
    const v5, 0x7f0801a3

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 158
    .local v1, errorIndicator:Landroid/view/View;
    const v5, 0x7f080179

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 160
    .local v0, contentListView:Landroid/widget/ListView;
    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLastVolleyError:Lcom/android/volley/VolleyError;

    if-eqz v5, :cond_51

    .line 161
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 162
    const v5, 0x7f080044

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 163
    .local v2, errorMsg:Landroid/widget/TextView;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLastVolleyError:Lcom/android/volley/VolleyError;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const v5, 0x7f080126

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/google/android/finsky/activities/myapps/MyAppsTab$1;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab$1;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsTab;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 174
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 184
    .end local v2           #errorMsg:Landroid/widget/TextView;
    :goto_50
    return-void

    .line 175
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->isDataReady()Z

    move-result v5

    if-eqz v5, :cond_61

    .line 176
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 177
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 178
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_50

    .line 180
    :cond_61
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 181
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 182
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_50
.end method
