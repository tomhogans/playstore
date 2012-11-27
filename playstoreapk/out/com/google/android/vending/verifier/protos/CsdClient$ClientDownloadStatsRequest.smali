.class public final Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CsdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/verifier/protos/CsdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientDownloadStatsRequest"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasToken:Z

.field private hasUserDecision:Z

.field private token_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private userDecision_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1783
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1792
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->userDecision_:I

    .line 1809
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->token_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1845
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->cachedSize:I

    .line 1783
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1848
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->cachedSize:I

    if-gez v0, :cond_7

    .line 1850
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->getSerializedSize()I

    .line 1852
    :cond_7
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 1857
    const/4 v0, 0x0

    .line 1858
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->hasUserDecision()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1859
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->getUserDecision()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1862
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->hasToken()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1863
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->getToken()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1866
    :cond_21
    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->cachedSize:I

    .line 1867
    return v0
.end method

.method public getToken()Lcom/google/protobuf/micro/ByteStringMicro;
    .registers 2

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->token_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getUserDecision()I
    .registers 2

    .prologue
    .line 1794
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->userDecision_:I

    return v0
.end method

.method public hasToken()Z
    .registers 2

    .prologue
    .line 1811
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->hasToken:Z

    return v0
.end method

.method public hasUserDecision()Z
    .registers 2

    .prologue
    .line 1793
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->hasUserDecision:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1875
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1876
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 1880
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1881
    :sswitch_d
    return-object p0

    .line 1886
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->setUserDecision(I)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;

    goto :goto_0

    .line 1890
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->setToken(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;

    goto :goto_0

    .line 1876
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
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
    .line 1780
    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;

    move-result-object v0

    return-object v0
.end method

.method public setToken(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;
    .registers 3
    .parameter "value"

    .prologue
    .line 1813
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->hasToken:Z

    .line 1814
    iput-object p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->token_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1815
    return-object p0
.end method

.method public setUserDecision(I)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;
    .registers 3
    .parameter "value"

    .prologue
    .line 1796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->hasUserDecision:Z

    .line 1797
    iput p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->userDecision_:I

    .line 1798
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
    .line 1837
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->hasUserDecision()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1838
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->getUserDecision()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1840
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1841
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->getToken()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 1843
    :cond_1c
    return-void
.end method
