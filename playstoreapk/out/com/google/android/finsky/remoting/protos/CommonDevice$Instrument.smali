.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Instrument"
.end annotation


# instance fields
.field private billingAddressSpec_:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

.field private billingAddress_:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

.field private cachedSize:I

.field private carrierBillingStatus_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

.field private carrierBilling_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

.field private creditCard_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

.field private displayTitle_:Ljava/lang/String;

.field private hasBillingAddress:Z

.field private hasBillingAddressSpec:Z

.field private hasCarrierBilling:Z

.field private hasCarrierBillingStatus:Z

.field private hasCreditCard:Z

.field private hasDisplayTitle:Z

.field private hasInstrumentFamily:Z

.field private hasInstrumentId:Z

.field private hasTopupInfo:Z

.field private instrumentFamily_:I

.field private instrumentId_:Ljava/lang/String;

.field private topupInfo_:Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->instrumentId_:Ljava/lang/String;

    .line 189
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->displayTitle_:Ljava/lang/String;

    .line 206
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->instrumentFamily_:I

    .line 223
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->billingAddress_:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 243
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->billingAddressSpec_:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    .line 263
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->creditCard_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    .line 283
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->carrierBilling_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    .line 303
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->carrierBillingStatus_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    .line 323
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->topupInfo_:Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;

    .line 396
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->cachedSize:I

    .line 167
    return-void
.end method


# virtual methods
.method public getBillingAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->billingAddress_:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    return-object v0
.end method

.method public getBillingAddressSpec()Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->billingAddressSpec_:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 399
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->cachedSize:I

    if-gez v0, :cond_7

    .line 401
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getSerializedSize()I

    .line 403
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->cachedSize:I

    return v0
.end method

.method public getCarrierBilling()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->carrierBilling_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    return-object v0
.end method

.method public getCarrierBillingStatus()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->carrierBillingStatus_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    return-object v0
.end method

.method public getCreditCard()Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->creditCard_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    return-object v0
.end method

.method public getDisplayTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->displayTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getInstrumentFamily()I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->instrumentFamily_:I

    return v0
.end method

.method public getInstrumentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->instrumentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasInstrumentId()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 410
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 413
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasBillingAddress()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 414
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getBillingAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 417
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCreditCard()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 418
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getCreditCard()Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 421
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCarrierBilling()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 422
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getCarrierBilling()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 425
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasBillingAddressSpec()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 426
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getBillingAddressSpec()Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 429
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasInstrumentFamily()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 430
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 433
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCarrierBillingStatus()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 434
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getCarrierBillingStatus()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 437
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasDisplayTitle()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 438
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getDisplayTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 441
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasTopupInfo()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 442
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getTopupInfo()Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 445
    :cond_93
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->cachedSize:I

    .line 446
    return v0
.end method

.method public getTopupInfo()Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->topupInfo_:Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;

    return-object v0
.end method

.method public hasBillingAddress()Z
    .registers 2

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasBillingAddress:Z

    return v0
.end method

.method public hasBillingAddressSpec()Z
    .registers 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasBillingAddressSpec:Z

    return v0
.end method

.method public hasCarrierBilling()Z
    .registers 2

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCarrierBilling:Z

    return v0
.end method

.method public hasCarrierBillingStatus()Z
    .registers 2

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCarrierBillingStatus:Z

    return v0
.end method

.method public hasCreditCard()Z
    .registers 2

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCreditCard:Z

    return v0
.end method

.method public hasDisplayTitle()Z
    .registers 2

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasDisplayTitle:Z

    return v0
.end method

.method public hasInstrumentFamily()Z
    .registers 2

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasInstrumentFamily:Z

    return v0
.end method

.method public hasInstrumentId()Z
    .registers 2

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasInstrumentId:Z

    return v0
.end method

.method public hasTopupInfo()Z
    .registers 2

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasTopupInfo:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 455
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_6e

    .line 459
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 460
    :sswitch_d
    return-object p0

    .line 465
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setInstrumentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    goto :goto_0

    .line 469
    :sswitch_16
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;-><init>()V

    .line 470
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 471
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setBillingAddress(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    goto :goto_0

    .line 475
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    :sswitch_22
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;-><init>()V

    .line 476
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 477
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setCreditCard(Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    goto :goto_0

    .line 481
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
    :sswitch_2e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;-><init>()V

    .line 482
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 483
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setCarrierBilling(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    goto :goto_0

    .line 487
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    :sswitch_3a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;-><init>()V

    .line 488
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 489
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setBillingAddressSpec(Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    goto :goto_0

    .line 493
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setInstrumentFamily(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    goto :goto_0

    .line 497
    :sswitch_4e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;-><init>()V

    .line 498
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 499
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setCarrierBillingStatus(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    goto :goto_0

    .line 503
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    :sswitch_5a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setDisplayTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    goto :goto_0

    .line 507
    :sswitch_62
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;-><init>()V

    .line 508
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 509
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setTopupInfo(Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    goto :goto_0

    .line 455
    :sswitch_data_6e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_22
        0x22 -> :sswitch_2e
        0x2a -> :sswitch_3a
        0x30 -> :sswitch_46
        0x3a -> :sswitch_4e
        0x42 -> :sswitch_5a
        0x4a -> :sswitch_62
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
    .line 164
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v0

    return-object v0
.end method

.method public setBillingAddress(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 227
    if-nez p1, :cond_8

    .line 228
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 230
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasBillingAddress:Z

    .line 231
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->billingAddress_:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 232
    return-object p0
.end method

.method public setBillingAddressSpec(Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 247
    if-nez p1, :cond_8

    .line 248
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 250
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasBillingAddressSpec:Z

    .line 251
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->billingAddressSpec_:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    .line 252
    return-object p0
.end method

.method public setCarrierBilling(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 287
    if-nez p1, :cond_8

    .line 288
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 290
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCarrierBilling:Z

    .line 291
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->carrierBilling_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    .line 292
    return-object p0
.end method

.method public setCarrierBillingStatus(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 307
    if-nez p1, :cond_8

    .line 308
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 310
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCarrierBillingStatus:Z

    .line 311
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->carrierBillingStatus_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    .line 312
    return-object p0
.end method

.method public setCreditCard(Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 267
    if-nez p1, :cond_8

    .line 268
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 270
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCreditCard:Z

    .line 271
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->creditCard_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    .line 272
    return-object p0
.end method

.method public setDisplayTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasDisplayTitle:Z

    .line 194
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->displayTitle_:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method public setInstrumentFamily(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasInstrumentFamily:Z

    .line 211
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->instrumentFamily_:I

    .line 212
    return-object p0
.end method

.method public setInstrumentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasInstrumentId:Z

    .line 177
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->instrumentId_:Ljava/lang/String;

    .line 178
    return-object p0
.end method

.method public setTopupInfo(Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 327
    if-nez p1, :cond_8

    .line 328
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 330
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasTopupInfo:Z

    .line 331
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->topupInfo_:Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;

    .line 332
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
    .line 367
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasInstrumentId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 368
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 370
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasBillingAddress()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 371
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getBillingAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 373
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCreditCard()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 374
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getCreditCard()Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 376
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCarrierBilling()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 377
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getCarrierBilling()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 379
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasBillingAddressSpec()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 380
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getBillingAddressSpec()Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 382
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasInstrumentFamily()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 383
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 385
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCarrierBillingStatus()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 386
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getCarrierBillingStatus()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 388
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasDisplayTitle()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 389
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getDisplayTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 391
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasTopupInfo()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 392
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getTopupInfo()Lcom/google/android/finsky/remoting/protos/CommonDevice$TopupInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 394
    :cond_80
    return-void
.end method
