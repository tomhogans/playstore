.class Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;
.super Ljava/lang/Thread;
.source "JsonpRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/addressinput/JsonpRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncHttp"
.end annotation


# static fields
.field private static final CLIENT:Lorg/apache/http/client/HttpClient;


# instance fields
.field private mCallback:Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback",
            "<",
            "Lcom/android/i18n/addressinput/JsoMap;",
            ">;"
        }
    .end annotation
.end field

.field private mRequest:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    sput-object v0, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->CLIENT:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;)V
    .registers 3
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback",
            "<",
            "Lcom/android/i18n/addressinput/JsoMap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, callback:Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;,"Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback<Lcom/android/i18n/addressinput/JsoMap;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 76
    iput-object p2, p0, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->mCallback:Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;

    .line 77
    return-void
.end method

.method static synthetic access$000()Lorg/apache/http/client/HttpClient;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->CLIENT:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 83
    :try_start_0
    sget-object v3, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->CLIENT:Lorg/apache/http/client/HttpClient;

    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_20

    .line 84
    :try_start_3
    sget-object v2, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->CLIENT:Lorg/apache/http/client/HttpClient;

    iget-object v4, p0, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    new-instance v5, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v5}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    invoke-interface {v2, v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    .local v1, response:Ljava/lang/String;
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1d

    .line 86
    :try_start_13
    iget-object v2, p0, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->mCallback:Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;

    invoke-static {v1}, Lcom/android/i18n/addressinput/JsoMap;->buildJsoMap(Ljava/lang/String;)Lcom/android/i18n/addressinput/JsoMap;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_20

    .line 90
    .end local v1           #response:Ljava/lang/String;
    :goto_1c
    return-void

    .line 85
    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v2
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_20} :catch_20

    .line 87
    :catch_20
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->mCallback:Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;

    invoke-interface {v2, v0}, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_1c
.end method
