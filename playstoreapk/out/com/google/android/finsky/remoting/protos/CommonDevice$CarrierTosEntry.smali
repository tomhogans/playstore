.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierTosEntry"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasUrl:Z

.field private hasVersion:Z

.field private url_:Ljava/lang/String;

.field private version_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 2187
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2192
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->url_:Ljava/lang/String;

    .line 2209
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->version_:Ljava/lang/String;

    .line 2245
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->cachedSize:I

    .line 2187
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2248
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->cachedSize:I

    if-gez v0, :cond_7

    .line 2250
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->getSerializedSize()I

    .line 2252
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 2257
    const/4 v0, 0x0

    .line 2258
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2259
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2262
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->hasVersion()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2263
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2266
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->cachedSize:I

    .line 2267
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->version_:Ljava/lang/String;

    return-object v0
.end method

.method public hasUrl()Z
    .registers 2

    .prologue
    .line 2194
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->hasUrl:Z

    return v0
.end method

.method public hasVersion()Z
    .registers 2

    .prologue
    .line 2211
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->hasVersion:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2275
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2276
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 2280
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2281
    :sswitch_d
    return-object p0

    .line 2286
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    goto :goto_0

    .line 2290
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->setVersion(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    goto :goto_0

    .line 2276
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
    .line 2184
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v0

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    .registers 3
    .parameter "value"

    .prologue
    .line 2196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->hasUrl:Z

    .line 2197
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->url_:Ljava/lang/String;

    .line 2198
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    .registers 3
    .parameter "value"

    .prologue
    .line 2213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->hasVersion:Z

    .line 2214
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->version_:Ljava/lang/String;

    .line 2215
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
    .line 2237
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2238
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2240
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2241
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2243
    :cond_1c
    return-void
.end method
