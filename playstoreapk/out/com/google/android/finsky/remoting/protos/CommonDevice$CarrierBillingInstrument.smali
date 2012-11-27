.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierBillingInstrument"
.end annotation


# instance fields
.field private acceptedCarrierTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

.field private accountType_:Ljava/lang/String;

.field private cachedSize:I

.field private credentials_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

.field private currencyCode_:Ljava/lang/String;

.field private encryptedSubscriberInfo_:Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;

.field private hasAcceptedCarrierTos:Z

.field private hasAccountType:Z

.field private hasCredentials:Z

.field private hasCurrencyCode:Z

.field private hasEncryptedSubscriberInfo:Z

.field private hasInstrumentKey:Z

.field private hasSubscriberIdentifier:Z

.field private hasTransactionLimit:Z

.field private instrumentKey_:Ljava/lang/String;

.field private subscriberIdentifier_:Ljava/lang/String;

.field private transactionLimit_:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 930
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 935
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->instrumentKey_:Ljava/lang/String;

    .line 952
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->accountType_:Ljava/lang/String;

    .line 969
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->currencyCode_:Ljava/lang/String;

    .line 986
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->transactionLimit_:J

    .line 1003
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->subscriberIdentifier_:Ljava/lang/String;

    .line 1020
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->encryptedSubscriberInfo_:Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;

    .line 1040
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->credentials_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

    .line 1060
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->acceptedCarrierTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    .line 1123
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->cachedSize:I

    .line 930
    return-void
.end method


# virtual methods
.method public getAcceptedCarrierTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    .registers 2

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->acceptedCarrierTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 953
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->accountType_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1126
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->cachedSize:I

    if-gez v0, :cond_7

    .line 1128
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getSerializedSize()I

    .line 1130
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->cachedSize:I

    return v0
.end method

.method public getCredentials()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;
    .registers 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->credentials_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 970
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->currencyCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptedSubscriberInfo()Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;
    .registers 2

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->encryptedSubscriberInfo_:Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;

    return-object v0
.end method

.method public getInstrumentKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 936
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->instrumentKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 1135
    const/4 v0, 0x0

    .line 1136
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasInstrumentKey()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1137
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getInstrumentKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1140
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasAccountType()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1141
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1144
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasCurrencyCode()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1145
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1148
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasTransactionLimit()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1149
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getTransactionLimit()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1152
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasSubscriberIdentifier()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1153
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getSubscriberIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1156
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasEncryptedSubscriberInfo()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1157
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getEncryptedSubscriberInfo()Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1160
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasCredentials()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1161
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getCredentials()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1164
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasAcceptedCarrierTos()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 1165
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getAcceptedCarrierTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1168
    :cond_82
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->cachedSize:I

    .line 1169
    return v0
.end method

.method public getSubscriberIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->subscriberIdentifier_:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionLimit()J
    .registers 3

    .prologue
    .line 987
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->transactionLimit_:J

    return-wide v0
.end method

.method public hasAcceptedCarrierTos()Z
    .registers 2

    .prologue
    .line 1061
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasAcceptedCarrierTos:Z

    return v0
.end method

.method public hasAccountType()Z
    .registers 2

    .prologue
    .line 954
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasAccountType:Z

    return v0
.end method

.method public hasCredentials()Z
    .registers 2

    .prologue
    .line 1041
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasCredentials:Z

    return v0
.end method

.method public hasCurrencyCode()Z
    .registers 2

    .prologue
    .line 971
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasCurrencyCode:Z

    return v0
.end method

.method public hasEncryptedSubscriberInfo()Z
    .registers 2

    .prologue
    .line 1021
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasEncryptedSubscriberInfo:Z

    return v0
.end method

.method public hasInstrumentKey()Z
    .registers 2

    .prologue
    .line 937
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasInstrumentKey:Z

    return v0
.end method

.method public hasSubscriberIdentifier()Z
    .registers 2

    .prologue
    .line 1005
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasSubscriberIdentifier:Z

    return v0
.end method

.method public hasTransactionLimit()Z
    .registers 2

    .prologue
    .line 988
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasTransactionLimit:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1177
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1178
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_5a

    .line 1182
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1183
    :sswitch_d
    return-object p0

    .line 1188
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setInstrumentKey(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    goto :goto_0

    .line 1192
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setAccountType(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    goto :goto_0

    .line 1196
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    goto :goto_0

    .line 1200
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setTransactionLimit(J)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    goto :goto_0

    .line 1204
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setSubscriberIdentifier(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    goto :goto_0

    .line 1208
    :sswitch_36
    new-instance v1, Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;-><init>()V

    .line 1209
    .local v1, value:Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1210
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setEncryptedSubscriberInfo(Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    goto :goto_0

    .line 1214
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;
    :sswitch_42
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;-><init>()V

    .line 1215
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1216
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setCredentials(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    goto :goto_0

    .line 1220
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;
    :sswitch_4e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;-><init>()V

    .line 1221
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1222
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->setAcceptedCarrierTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    goto :goto_0

    .line 1178
    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x20 -> :sswitch_26
        0x2a -> :sswitch_2e
        0x32 -> :sswitch_36
        0x3a -> :sswitch_42
        0x42 -> :sswitch_4e
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
    .line 927
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    move-result-object v0

    return-object v0
.end method

.method public setAcceptedCarrierTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 1064
    if-nez p1, :cond_8

    .line 1065
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1067
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasAcceptedCarrierTos:Z

    .line 1068
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->acceptedCarrierTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    .line 1069
    return-object p0
.end method

.method public setAccountType(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 956
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasAccountType:Z

    .line 957
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->accountType_:Ljava/lang/String;

    .line 958
    return-object p0
.end method

.method public setCredentials(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 1044
    if-nez p1, :cond_8

    .line 1045
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1047
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasCredentials:Z

    .line 1048
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->credentials_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

    .line 1049
    return-object p0
.end method

.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 973
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasCurrencyCode:Z

    .line 974
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->currencyCode_:Ljava/lang/String;

    .line 975
    return-object p0
.end method

.method public setEncryptedSubscriberInfo(Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 1024
    if-nez p1, :cond_8

    .line 1025
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1027
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasEncryptedSubscriberInfo:Z

    .line 1028
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->encryptedSubscriberInfo_:Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;

    .line 1029
    return-object p0
.end method

.method public setInstrumentKey(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 939
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasInstrumentKey:Z

    .line 940
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->instrumentKey_:Ljava/lang/String;

    .line 941
    return-object p0
.end method

.method public setSubscriberIdentifier(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 1007
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasSubscriberIdentifier:Z

    .line 1008
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->subscriberIdentifier_:Ljava/lang/String;

    .line 1009
    return-object p0
.end method

.method public setTransactionLimit(J)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    .registers 4
    .parameter "value"

    .prologue
    .line 990
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasTransactionLimit:Z

    .line 991
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->transactionLimit_:J

    .line 992
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
    .line 1097
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasInstrumentKey()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1098
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getInstrumentKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1100
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasAccountType()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1101
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1103
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasCurrencyCode()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1104
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1106
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasTransactionLimit()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1107
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getTransactionLimit()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1109
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasSubscriberIdentifier()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1110
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getSubscriberIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1112
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasEncryptedSubscriberInfo()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1113
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getEncryptedSubscriberInfo()Lcom/google/android/finsky/remoting/protos/EncryptedSubscriberInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1115
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasCredentials()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1116
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getCredentials()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1118
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->hasAcceptedCarrierTos()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1119
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;->getAcceptedCarrierTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1121
    :cond_71
    return-void
.end method
