.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstrumentSetupInfo"
.end annotation


# instance fields
.field private addressChallenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

.field private balance_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;

.field private cachedSize:I

.field private footerHtml_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasAddressChallenge:Z

.field private hasBalance:Z

.field private hasInstrumentFamily:Z

.field private hasSupported:Z

.field private instrumentFamily_:I

.field private supported_:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2633
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2638
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->instrumentFamily_:I

    .line 2655
    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->supported_:Z

    .line 2672
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->addressChallenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    .line 2692
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->balance_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;

    .line 2711
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->footerHtml_:Ljava/util/List;

    .line 2782
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->cachedSize:I

    .line 2633
    return-void
.end method


# virtual methods
.method public addFooterHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2728
    if-nez p1, :cond_8

    .line 2729
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2731
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->footerHtml_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->footerHtml_:Ljava/util/List;

    .line 2734
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->footerHtml_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2735
    return-object p0
.end method

.method public getAddressChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    .registers 2

    .prologue
    .line 2674
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->addressChallenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    return-object v0
.end method

.method public getBalance()Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;
    .registers 2

    .prologue
    .line 2694
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->balance_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2785
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->cachedSize:I

    if-gez v0, :cond_7

    .line 2787
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getSerializedSize()I

    .line 2789
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->cachedSize:I

    return v0
.end method

.method public getFooterHtmlList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2714
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->footerHtml_:Ljava/util/List;

    return-object v0
.end method

.method public getInstrumentFamily()I
    .registers 2

    .prologue
    .line 2640
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->instrumentFamily_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 2794
    const/4 v3, 0x0

    .line 2795
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasInstrumentFamily()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2796
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getInstrumentFamily()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2799
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasSupported()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2800
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getSupported()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2803
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasAddressChallenge()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 2804
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getAddressChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2807
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasBalance()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 2808
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getBalance()Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2812
    :cond_41
    const/4 v0, 0x0

    .line 2813
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getFooterHtmlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2814
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_4a

    .line 2817
    .end local v1           #element:Ljava/lang/String;
    :cond_5c
    add-int/2addr v3, v0

    .line 2818
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getFooterHtmlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2820
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->cachedSize:I

    .line 2821
    return v3
.end method

.method public getSupported()Z
    .registers 2

    .prologue
    .line 2656
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->supported_:Z

    return v0
.end method

.method public hasAddressChallenge()Z
    .registers 2

    .prologue
    .line 2673
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasAddressChallenge:Z

    return v0
.end method

.method public hasBalance()Z
    .registers 2

    .prologue
    .line 2693
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasBalance:Z

    return v0
.end method

.method public hasInstrumentFamily()Z
    .registers 2

    .prologue
    .line 2639
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasInstrumentFamily:Z

    return v0
.end method

.method public hasSupported()Z
    .registers 2

    .prologue
    .line 2657
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasSupported:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2829
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2830
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_3e

    .line 2834
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2835
    :sswitch_d
    return-object p0

    .line 2840
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->setInstrumentFamily(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;

    goto :goto_0

    .line 2844
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->setSupported(Z)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;

    goto :goto_0

    .line 2848
    :sswitch_1e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;-><init>()V

    .line 2849
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2850
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->setAddressChallenge(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;

    goto :goto_0

    .line 2854
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    :sswitch_2a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;-><init>()V

    .line 2855
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2856
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->setBalance(Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;

    goto :goto_0

    .line 2860
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->addFooterHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;

    goto :goto_0

    .line 2830
    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_2a
        0x2a -> :sswitch_36
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
    .line 2630
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;

    move-result-object v0

    return-object v0
.end method

.method public setAddressChallenge(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2676
    if-nez p1, :cond_8

    .line 2677
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2679
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasAddressChallenge:Z

    .line 2680
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->addressChallenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    .line 2681
    return-object p0
.end method

.method public setBalance(Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2696
    if-nez p1, :cond_8

    .line 2697
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2699
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasBalance:Z

    .line 2700
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->balance_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;

    .line 2701
    return-object p0
.end method

.method public setInstrumentFamily(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasInstrumentFamily:Z

    .line 2643
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->instrumentFamily_:I

    .line 2644
    return-object p0
.end method

.method public setSupported(Z)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasSupported:Z

    .line 2660
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->supported_:Z

    .line 2661
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2765
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasInstrumentFamily()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2766
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getInstrumentFamily()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2768
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasSupported()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2769
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getSupported()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2771
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasAddressChallenge()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2772
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getAddressChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2774
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->hasBalance()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2775
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getBalance()Lcom/google/android/finsky/remoting/protos/CommonDevice$Money;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2777
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;->getFooterHtmlList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2778
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_40

    .line 2780
    .end local v0           #element:Ljava/lang/String;
    :cond_51
    return-void
.end method
