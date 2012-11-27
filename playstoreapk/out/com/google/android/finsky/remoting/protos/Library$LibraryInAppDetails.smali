.class public final Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Library.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Library;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryInAppDetails"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasSignature:Z

.field private hasSignedPurchaseData:Z

.field private signature_:Ljava/lang/String;

.field private signedPurchaseData_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 912
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 917
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->signedPurchaseData_:Ljava/lang/String;

    .line 934
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->signature_:Ljava/lang/String;

    .line 970
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->cachedSize:I

    .line 912
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 973
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->cachedSize:I

    if-gez v0, :cond_7

    .line 975
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->getSerializedSize()I

    .line 977
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 982
    const/4 v0, 0x0

    .line 983
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->hasSignedPurchaseData()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 984
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->getSignedPurchaseData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 987
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->hasSignature()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 988
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 991
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->cachedSize:I

    .line 992
    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->signature_:Ljava/lang/String;

    return-object v0
.end method

.method public getSignedPurchaseData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->signedPurchaseData_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSignature()Z
    .registers 2

    .prologue
    .line 936
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->hasSignature:Z

    return v0
.end method

.method public hasSignedPurchaseData()Z
    .registers 2

    .prologue
    .line 919
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->hasSignedPurchaseData:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1000
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1001
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 1005
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1006
    :sswitch_d
    return-object p0

    .line 1011
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->setSignedPurchaseData(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;

    goto :goto_0

    .line 1015
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->setSignature(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;

    goto :goto_0

    .line 1001
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
    .line 909
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;

    move-result-object v0

    return-object v0
.end method

.method public setSignature(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 938
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->hasSignature:Z

    .line 939
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->signature_:Ljava/lang/String;

    .line 940
    return-object p0
.end method

.method public setSignedPurchaseData(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->hasSignedPurchaseData:Z

    .line 922
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->signedPurchaseData_:Ljava/lang/String;

    .line 923
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
    .line 962
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->hasSignedPurchaseData()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 963
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->getSignedPurchaseData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 965
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 966
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryInAppDetails;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 968
    :cond_1c
    return-void
.end method
