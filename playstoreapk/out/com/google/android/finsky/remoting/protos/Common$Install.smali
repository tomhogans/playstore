.class public final Lcom/google/android/finsky/remoting/protos/Common$Install;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Install"
.end annotation


# instance fields
.field private androidId_:J

.field private bundled_:Z

.field private cachedSize:I

.field private hasAndroidId:Z

.field private hasBundled:Z

.field private hasVersion:Z

.field private version_:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2210
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2215
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Install;->androidId_:J

    .line 2232
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/Common$Install;->version_:I

    .line 2249
    iput-boolean v2, p0, Lcom/google/android/finsky/remoting/protos/Common$Install;->bundled_:Z

    .line 2289
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Install;->cachedSize:I

    .line 2210
    return-void
.end method


# virtual methods
.method public getAndroidId()J
    .registers 3

    .prologue
    .line 2216
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Install;->androidId_:J

    return-wide v0
.end method

.method public getBundled()Z
    .registers 2

    .prologue
    .line 2250
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Install;->bundled_:Z

    return v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2292
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Install;->cachedSize:I

    if-gez v0, :cond_7

    .line 2294
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Install;->getSerializedSize()I

    .line 2296
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Install;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 2301
    const/4 v0, 0x0

    .line 2302
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Install;->hasAndroidId()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2303
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Install;->getAndroidId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2306
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Install;->hasVersion()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2307
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Install;->getVersion()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2310
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Install;->hasBundled()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2311
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Install;->getBundled()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2314
    :cond_31
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Install;->cachedSize:I

    .line 2315
    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 2233
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Install;->version_:I

    return v0
.end method

.method public hasAndroidId()Z
    .registers 2

    .prologue
    .line 2217
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Install;->hasAndroidId:Z

    return v0
.end method

.method public hasBundled()Z
    .registers 2

    .prologue
    .line 2251
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Install;->hasBundled:Z

    return v0
.end method

.method public hasVersion()Z
    .registers 2

    .prologue
    .line 2234
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Install;->hasVersion:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$Install;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2323
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2324
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 2328
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Common$Install;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2329
    :sswitch_d
    return-object p0

    .line 2334
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Common$Install;->setAndroidId(J)Lcom/google/android/finsky/remoting/protos/Common$Install;

    goto :goto_0

    .line 2338
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$Install;->setVersion(I)Lcom/google/android/finsky/remoting/protos/Common$Install;

    goto :goto_0

    .line 2342
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$Install;->setBundled(Z)Lcom/google/android/finsky/remoting/protos/Common$Install;

    goto :goto_0

    .line 2324
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0x9 -> :sswitch_e
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1e
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
    .line 2207
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Common$Install;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$Install;

    move-result-object v0

    return-object v0
.end method

.method public setAndroidId(J)Lcom/google/android/finsky/remoting/protos/Common$Install;
    .registers 4
    .parameter "value"

    .prologue
    .line 2219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Install;->hasAndroidId:Z

    .line 2220
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Install;->androidId_:J

    .line 2221
    return-object p0
.end method

.method public setBundled(Z)Lcom/google/android/finsky/remoting/protos/Common$Install;
    .registers 3
    .parameter "value"

    .prologue
    .line 2253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Install;->hasBundled:Z

    .line 2254
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Install;->bundled_:Z

    .line 2255
    return-object p0
.end method

.method public setVersion(I)Lcom/google/android/finsky/remoting/protos/Common$Install;
    .registers 3
    .parameter "value"

    .prologue
    .line 2236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Install;->hasVersion:Z

    .line 2237
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Install;->version_:I

    .line 2238
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2278
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Install;->hasAndroidId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2279
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Install;->getAndroidId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed64(IJ)V

    .line 2281
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Install;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2282
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Install;->getVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2284
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Install;->hasBundled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2285
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Install;->getBundled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2287
    :cond_2a
    return-void
.end method
