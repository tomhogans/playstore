.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PasswordPrompt"
.end annotation


# instance fields
.field private cachedSize:I

.field private forgotPasswordUrl_:Ljava/lang/String;

.field private hasForgotPasswordUrl:Z

.field private hasPrompt:Z

.field private prompt_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 2507
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2512
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->prompt_:Ljava/lang/String;

    .line 2529
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->forgotPasswordUrl_:Ljava/lang/String;

    .line 2565
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->cachedSize:I

    .line 2507
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2568
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->cachedSize:I

    if-gez v0, :cond_7

    .line 2570
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->getSerializedSize()I

    .line 2572
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->cachedSize:I

    return v0
.end method

.method public getForgotPasswordUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2530
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->forgotPasswordUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2513
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->prompt_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 2577
    const/4 v0, 0x0

    .line 2578
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->hasPrompt()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2579
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->getPrompt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2582
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->hasForgotPasswordUrl()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2583
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->getForgotPasswordUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2586
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->cachedSize:I

    .line 2587
    return v0
.end method

.method public hasForgotPasswordUrl()Z
    .registers 2

    .prologue
    .line 2531
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->hasForgotPasswordUrl:Z

    return v0
.end method

.method public hasPrompt()Z
    .registers 2

    .prologue
    .line 2514
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->hasPrompt:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2595
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2596
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 2600
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2601
    :sswitch_d
    return-object p0

    .line 2606
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->setPrompt(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;

    goto :goto_0

    .line 2610
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->setForgotPasswordUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;

    goto :goto_0

    .line 2596
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
    .line 2504
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;

    move-result-object v0

    return-object v0
.end method

.method public setForgotPasswordUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;
    .registers 3
    .parameter "value"

    .prologue
    .line 2533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->hasForgotPasswordUrl:Z

    .line 2534
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->forgotPasswordUrl_:Ljava/lang/String;

    .line 2535
    return-object p0
.end method

.method public setPrompt(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;
    .registers 3
    .parameter "value"

    .prologue
    .line 2516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->hasPrompt:Z

    .line 2517
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->prompt_:Ljava/lang/String;

    .line 2518
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
    .line 2557
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->hasPrompt()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2558
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->getPrompt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2560
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->hasForgotPasswordUrl()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2561
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->getForgotPasswordUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2563
    :cond_1c
    return-void
.end method
