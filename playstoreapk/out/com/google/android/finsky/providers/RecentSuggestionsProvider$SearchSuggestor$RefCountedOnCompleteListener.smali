.class Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;
.super Ljava/lang/Object;
.source "RecentSuggestionsProvider.java"

# interfaces
.implements Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefCountedOnCompleteListener"
.end annotation


# instance fields
.field mRefCount:I

.field mWrappedListener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->mRefCount:I

    .line 272
    iput-object p1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->mWrappedListener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;

    .line 273
    return-void
.end method


# virtual methods
.method public declared-synchronized addProducer()V
    .registers 2

    .prologue
    .line 289
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->mRefCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 290
    monitor-exit p0

    return-void

    .line 289
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onComplete()V
    .registers 2

    .prologue
    .line 277
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->mRefCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-gtz v0, :cond_7

    .line 285
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 281
    :cond_7
    :try_start_7
    iget v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->mRefCount:I

    .line 282
    iget v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->mRefCount:I

    if-gtz v0, :cond_5

    .line 283
    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->mWrappedListener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;

    invoke-interface {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;->onComplete()V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_17

    goto :goto_5

    .line 277
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method
