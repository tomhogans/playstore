.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceAssociation"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasUserTokenRequestAddress:Z

.field private hasUserTokenRequestMessage:Z

.field private userTokenRequestAddress_:Ljava/lang/String;

.field private userTokenRequestMessage_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1371
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1376
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->userTokenRequestMessage_:Ljava/lang/String;

    .line 1393
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->userTokenRequestAddress_:Ljava/lang/String;

    .line 1429
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->cachedSize:I

    .line 1371
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1432
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->cachedSize:I

    if-gez v0, :cond_7

    .line 1434
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->getSerializedSize()I

    .line 1436
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 1441
    const/4 v0, 0x0

    .line 1442
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->hasUserTokenRequestMessage()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1443
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->getUserTokenRequestMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1446
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->hasUserTokenRequestAddress()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1447
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->getUserTokenRequestAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1450
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->cachedSize:I

    .line 1451
    return v0
.end method

.method public getUserTokenRequestAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->userTokenRequestAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserTokenRequestMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->userTokenRequestMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public hasUserTokenRequestAddress()Z
    .registers 2

    .prologue
    .line 1395
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->hasUserTokenRequestAddress:Z

    return v0
.end method

.method public hasUserTokenRequestMessage()Z
    .registers 2

    .prologue
    .line 1378
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->hasUserTokenRequestMessage:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1459
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1460
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 1464
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1465
    :sswitch_d
    return-object p0

    .line 1470
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->setUserTokenRequestMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;

    goto :goto_0

    .line 1474
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->setUserTokenRequestAddress(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;

    goto :goto_0

    .line 1460
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
    .end sparse-switch
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
    .line 1368
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;

    move-result-object v0

    return-object v0
.end method

.method public setUserTokenRequestAddress(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;
    .registers 3
    .parameter "value"

    .prologue
    .line 1397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->hasUserTokenRequestAddress:Z

    .line 1398
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->userTokenRequestAddress_:Ljava/lang/String;

    .line 1399
    return-object p0
.end method

.method public setUserTokenRequestMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;
    .registers 3
    .parameter "value"

    .prologue
    .line 1380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->hasUserTokenRequestMessage:Z

    .line 1381
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->userTokenRequestMessage_:Ljava/lang/String;

    .line 1382
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->hasUserTokenRequestMessage()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1422
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->getUserTokenRequestMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1424
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->hasUserTokenRequestAddress()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1425
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$DeviceAssociation;->getUserTokenRequestAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1427
    :cond_1c
    return-void
.end method
