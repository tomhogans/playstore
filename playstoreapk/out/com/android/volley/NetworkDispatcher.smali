.class public Lcom/android/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field private final mCache:Lcom/android/volley/Cache;

.field private final mDelivery:Lcom/android/volley/ResponseDelivery;

.field private final mNetwork:Lcom/android/volley/Network;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Network;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V
    .registers 6
    .parameter
    .parameter "network"
    .parameter "cache"
    .parameter "delivery"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request;",
            ">;",
            "Lcom/android/volley/Network;",
            "Lcom/android/volley/Cache;",
            "Lcom/android/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, queue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Lcom/android/volley/Request;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    .line 56
    iput-object p1, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 57
    iput-object p2, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;

    .line 58
    iput-object p3, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;

    .line 59
    iput-object p4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    .line 60
    return-void
.end method

.method private parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .registers 4
    .parameter
    .parameter "error"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, request:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    move-result-object p2

    .line 133
    iget-object v0, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v0, p1, p2}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 134
    return-void
.end method


# virtual methods
.method public quit()V
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    .line 68
    invoke-virtual {p0}, Lcom/android/volley/NetworkDispatcher;->interrupt()V

    .line 69
    return-void
.end method

.method public run()V
    .registers 10

    .prologue
    .line 73
    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 78
    :cond_5
    :goto_5
    :try_start_5
    iget-object v5, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/Request;
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_d} :catch_23

    .line 88
    .local v2, request:Lcom/android/volley/Request;
    :try_start_d
    const-string v5, "network-queue-take"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 93
    const-string v5, "network-discard-cancelled"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_1d
    .catch Lcom/android/volley/VolleyError; {:try_start_d .. :try_end_1d} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1d} :catch_44

    goto :goto_5

    .line 122
    :catch_1e
    move-exception v4

    .line 123
    .local v4, volleyError:Lcom/android/volley/VolleyError;
    invoke-direct {p0, v2, v4}, Lcom/android/volley/NetworkDispatcher;->parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_5

    .line 79
    .end local v2           #request:Lcom/android/volley/Request;
    .end local v4           #volleyError:Lcom/android/volley/VolleyError;
    :catch_23
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/InterruptedException;
    iget-boolean v5, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    if-eqz v5, :cond_5

    .line 82
    return-void

    .line 98
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v2       #request:Lcom/android/volley/Request;
    :cond_29
    :try_start_29
    iget-object v5, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;

    invoke-interface {v5, v2}, Lcom/android/volley/Network;->performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;

    move-result-object v1

    .line 99
    .local v1, networkResponse:Lcom/android/volley/NetworkResponse;
    const-string v5, "network-http-complete"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 103
    iget-boolean v5, v1, Lcom/android/volley/NetworkResponse;->notModified:Z

    if-eqz v5, :cond_5f

    invoke-virtual {v2}, Lcom/android/volley/Request;->hasHadResponseDelivered()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 104
    const-string v5, "not-modified"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_43
    .catch Lcom/android/volley/VolleyError; {:try_start_29 .. :try_end_43} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_43} :catch_44

    goto :goto_5

    .line 124
    .end local v1           #networkResponse:Lcom/android/volley/NetworkResponse;
    :catch_44
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Unhandled exception %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v5, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    new-instance v6, Lcom/android/volley/VolleyError;

    invoke-direct {v6, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v5, v2, v6}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_5

    .line 109
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #networkResponse:Lcom/android/volley/NetworkResponse;
    :cond_5f
    :try_start_5f
    invoke-virtual {v2, v1}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v3

    .line 110
    .local v3, response:Lcom/android/volley/Response;,"Lcom/android/volley/Response<*>;"
    const-string v5, "network-parse-complete"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v5

    if-eqz v5, :cond_82

    iget-object v5, v3, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    if-eqz v5, :cond_82

    .line 115
    iget-object v5, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;

    invoke-virtual {v2}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    invoke-interface {v5, v6, v7}, Lcom/android/volley/Cache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    .line 116
    const-string v5, "network-cache-written"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 120
    :cond_82
    invoke-virtual {v2}, Lcom/android/volley/Request;->markDelivered()V

    .line 121
    iget-object v5, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v5, v2, v3}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    :try_end_8a
    .catch Lcom/android/volley/VolleyError; {:try_start_5f .. :try_end_8a} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_8a} :catch_44

    goto/16 :goto_5
.end method
