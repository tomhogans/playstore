.class Lcom/google/android/finsky/activities/GetMarketMetadataAction$3;
.super Ljava/lang/Object;
.source "GetMarketMetadataAction.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/GetMarketMetadataAction;->runBlocking(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/GetMarketMetadataAction;

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/GetMarketMetadataAction;Ljava/util/concurrent/Semaphore;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/finsky/activities/GetMarketMetadataAction$3;->this$0:Lcom/google/android/finsky/activities/GetMarketMetadataAction;

    iput-object p2, p0, Lcom/google/android/finsky/activities/GetMarketMetadataAction$3;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .parameter "error"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/activities/GetMarketMetadataAction$3;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 113
    return-void
.end method
