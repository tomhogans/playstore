.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetCarrierInfoRequestProto"
.end annotation


# instance fields
.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16417
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 16433
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;->cachedSize:I

    .line 16417
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 16436
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 16438
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;->getSerializedSize()I

    .line 16440
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 2

    .prologue
    .line 16445
    const/4 v0, 0x0

    .line 16446
    .local v0, size:I
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;->cachedSize:I

    .line 16447
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16455
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 16456
    .local v0, tag:I
    packed-switch v0, :pswitch_data_e

    .line 16460
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16461
    :pswitch_d
    return-object p0

    .line 16456
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16415
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16431
    return-void
.end method
