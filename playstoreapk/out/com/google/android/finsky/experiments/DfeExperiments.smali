.class public Lcom/google/android/finsky/experiments/DfeExperiments;
.super Ljava/lang/Object;
.source "DfeExperiments.java"

# interfaces
.implements Lcom/google/android/finsky/experiments/Experiments;


# static fields
.field private static final sRecognizedExperiments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEnabledExperiments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabledHeaderValue:Ljava/lang/String;

.field private final mUnsupportedExperiments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnsupportedHeaderValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/experiments/DfeExperiments;->sRecognizedExperiments:Ljava/util/Set;

    .line 45
    sget-object v0, Lcom/google/android/finsky/experiments/DfeExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:warm_welcome.show_consumption_button"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/experiments/DfeExperiments;->mUnsupportedExperiments:Ljava/util/Set;

    .line 38
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/experiments/DfeExperiments;->mEnabledExperiments:Ljava/util/Set;

    .line 49
    invoke-direct {p0}, Lcom/google/android/finsky/experiments/DfeExperiments;->reset()V

    .line 50
    return-void
.end method

.method private reset()V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/experiments/DfeExperiments;->mEnabledExperiments:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 105
    iget-object v0, p0, Lcom/google/android/finsky/experiments/DfeExperiments;->mUnsupportedExperiments:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 106
    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->showStagingData:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/experiments/DfeExperiments;->mEnabledExperiments:Ljava/util/Set;

    const-string v1, "android_group:eng.finsky.merchandising.staging"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_1f
    invoke-direct {p0}, Lcom/google/android/finsky/experiments/DfeExperiments;->updateHeaders()V

    .line 110
    return-void
.end method

.method private updateHeaders()V
    .registers 3

    .prologue
    .line 114
    const-string v0, ","

    iget-object v1, p0, Lcom/google/android/finsky/experiments/DfeExperiments;->mEnabledExperiments:Ljava/util/Set;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/experiments/DfeExperiments;->mEnabledHeaderValue:Ljava/lang/String;

    .line 115
    const-string v0, ","

    iget-object v1, p0, Lcom/google/android/finsky/experiments/DfeExperiments;->mUnsupportedExperiments:Ljava/util/Set;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/experiments/DfeExperiments;->mUnsupportedHeaderValue:Ljava/lang/String;

    .line 116
    return-void
.end method


# virtual methods
.method public declared-synchronized getEnabledExperimentsHeaderValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/experiments/DfeExperiments;->mEnabledHeaderValue:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUnsupportedExperimentsHeaderValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/experiments/DfeExperiments;->mUnsupportedHeaderValue:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasEnabledExperiments()Z
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/finsky/experiments/DfeExperiments;->mEnabledExperiments:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public declared-synchronized hasUnsupportedExperiments()Z
    .registers 2

    .prologue
    .line 70
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/experiments/DfeExperiments;->mUnsupportedExperiments:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnabled(Ljava/lang/String;)Z
    .registers 3
    .parameter "experimentId"

    .prologue
    .line 54
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/experiments/DfeExperiments;->mEnabledExperiments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setExperiments(Ljava/util/Collection;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, experiments:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/finsky/experiments/DfeExperiments;->reset()V

    .line 92
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    .local v0, experiment:Ljava/lang/String;
    sget-object v2, Lcom/google/android/finsky/experiments/DfeExperiments;->sRecognizedExperiments:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 94
    iget-object v2, p0, Lcom/google/android/finsky/experiments/DfeExperiments;->mEnabledExperiments:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_22

    goto :goto_8

    .line 91
    .end local v0           #experiment:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_22
    move-exception v2

    monitor-exit p0

    throw v2

    .line 96
    .restart local v0       #experiment:Ljava/lang/String;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/google/android/finsky/experiments/DfeExperiments;->mUnsupportedExperiments:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 99
    .end local v0           #experiment:Ljava/lang/String;
    :cond_2b
    invoke-direct {p0}, Lcom/google/android/finsky/experiments/DfeExperiments;->updateHeaders()V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_22

    .line 100
    monitor-exit p0

    return-void
.end method
