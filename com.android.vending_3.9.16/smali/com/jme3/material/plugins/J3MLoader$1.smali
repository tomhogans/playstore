.class synthetic Lcom/jme3/material/plugins/J3MLoader$1;
.super Ljava/lang/Object;
.source "J3MLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/material/plugins/J3MLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$jme3$shader$VarType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 163
    invoke-static {}, Lcom/jme3/shader/VarType;->values()[Lcom/jme3/shader/VarType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/material/plugins/J3MLoader$1;->$SwitchMap$com$jme3$shader$VarType:[I

    :try_start_0
    sget-object v0, Lcom/jme3/material/plugins/J3MLoader$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Float:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/jme3/material/plugins/J3MLoader$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Vector2:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/jme3/material/plugins/J3MLoader$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Vector3:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v0, Lcom/jme3/material/plugins/J3MLoader$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lcom/jme3/material/plugins/J3MLoader$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/jme3/material/plugins/J3MLoader$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Boolean:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
