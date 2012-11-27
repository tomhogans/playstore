.class public Lcom/jme3/export/SavableClassUtil;
.super Ljava/lang/Object;
.source "SavableClassUtil.java"


# static fields
.field private static final classRemappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jme3/export/SavableClassUtil;->classRemappings:Ljava/util/HashMap;

    .line 64
    const-string v0, "com.jme3.effect.EmitterSphereShape"

    const-class v1, Lcom/jme3/effect/shapes/EmitterSphereShape;

    invoke-static {v0, v1}, Lcom/jme3/export/SavableClassUtil;->addRemapping(Ljava/lang/String;Ljava/lang/Class;)V

    .line 65
    const-string v0, "com.jme3.effect.EmitterBoxShape"

    const-class v1, Lcom/jme3/effect/shapes/EmitterBoxShape;

    invoke-static {v0, v1}, Lcom/jme3/export/SavableClassUtil;->addRemapping(Ljava/lang/String;Ljava/lang/Class;)V

    .line 66
    const-string v0, "com.jme3.effect.EmitterMeshConvexHullShape"

    const-class v1, Lcom/jme3/effect/shapes/EmitterMeshConvexHullShape;

    invoke-static {v0, v1}, Lcom/jme3/export/SavableClassUtil;->addRemapping(Ljava/lang/String;Ljava/lang/Class;)V

    .line 67
    const-string v0, "com.jme3.effect.EmitterMeshFaceShape"

    const-class v1, Lcom/jme3/effect/shapes/EmitterMeshFaceShape;

    invoke-static {v0, v1}, Lcom/jme3/export/SavableClassUtil;->addRemapping(Ljava/lang/String;Ljava/lang/Class;)V

    .line 68
    const-string v0, "com.jme3.effect.EmitterMeshVertexShape"

    const-class v1, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;

    invoke-static {v0, v1}, Lcom/jme3/export/SavableClassUtil;->addRemapping(Ljava/lang/String;Ljava/lang/Class;)V

    .line 69
    const-string v0, "com.jme3.effect.EmitterPointShape"

    const-class v1, Lcom/jme3/effect/shapes/EmitterPointShape;

    invoke-static {v0, v1}, Lcom/jme3/export/SavableClassUtil;->addRemapping(Ljava/lang/String;Ljava/lang/Class;)V

    .line 70
    const-string v0, "com.jme3.material.Material$MatParamTexture"

    const-class v1, Lcom/jme3/material/MatParamTexture;

    invoke-static {v0, v1}, Lcom/jme3/export/SavableClassUtil;->addRemapping(Ljava/lang/String;Ljava/lang/Class;)V

    .line 71
    const-string v0, "com.jme3.animation.BoneAnimation"

    const-class v1, Lcom/jme3/animation/Animation;

    invoke-static {v0, v1}, Lcom/jme3/export/SavableClassUtil;->addRemapping(Ljava/lang/String;Ljava/lang/Class;)V

    .line 72
    const-string v0, "com.jme3.animation.SpatialAnimation"

    const-class v1, Lcom/jme3/animation/Animation;

    invoke-static {v0, v1}, Lcom/jme3/export/SavableClassUtil;->addRemapping(Ljava/lang/String;Ljava/lang/Class;)V

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addRemapping(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .parameter "oldClass"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/jme3/export/Savable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, newClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/jme3/export/Savable;>;"
    sget-object v0, Lcom/jme3/export/SavableClassUtil;->classRemappings:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/jme3/export/Savable;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {p0}, Lcom/jme3/export/SavableClassUtil;->remapClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    :try_start_4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/Savable;
    :try_end_e
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_e} :catch_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_e} :catch_22

    return-object v0

    .line 172
    :catch_f
    move-exception v0

    .line 173
    const-class v2, Lcom/jme3/export/SavableClassUtil;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Could not access constructor of class \'\'{0}\'\'! \nSome types need to have the BinaryImporter set up in a special way. Please doublecheck the setup."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    throw v0

    .line 177
    :catch_22
    move-exception v0

    .line 178
    const-class v1, Lcom/jme3/export/SavableClassUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "{0} \nSome types need to have the BinaryImporter set up in a special way. Please doublecheck the setup."

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    throw v0
.end method

.method public static fromName(Ljava/lang/String;Ljava/util/List;)Lcom/jme3/export/Savable;
    .registers 6
    .parameter "className"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Lcom/jme3/export/Savable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    .local p1, loaders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ClassLoader;>;"
    if-nez p1, :cond_7

    .line 188
    invoke-static {p0}, Lcom/jme3/export/SavableClassUtil;->fromName(Ljava/lang/String;)Lcom/jme3/export/Savable;

    move-result-object v3

    .line 203
    :goto_6
    return-object v3

    .line 191
    :cond_7
    invoke-static {p0}, Lcom/jme3/export/SavableClassUtil;->remapClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, newClassName:Ljava/lang/String;
    monitor-enter p1

    .line 193
    :try_start_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_28

    .line 195
    .local v0, classLoader:Ljava/lang/ClassLoader;
    :try_start_1c
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/export/Savable;
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_28
    .catch Ljava/lang/InstantiationException; {:try_start_1c .. :try_end_26} :catch_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_26} :catch_31

    :try_start_26
    monitor-exit p1

    goto :goto_6

    .line 201
    .end local v0           #classLoader:Ljava/lang/ClassLoader;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_28
    move-exception v3

    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_28

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2b
    :try_start_2b
    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    .line 203
    invoke-static {p0}, Lcom/jme3/export/SavableClassUtil;->fromName(Ljava/lang/String;)Lcom/jme3/export/Savable;

    move-result-object v3

    goto :goto_6

    .line 197
    .restart local v0       #classLoader:Ljava/lang/ClassLoader;
    :catch_31
    move-exception v3

    goto :goto_10

    .line 196
    :catch_33
    move-exception v3

    goto :goto_10
.end method

.method public static getSavedSavableVersion(Ljava/lang/Object;Ljava/lang/Class;[II)I
    .registers 9
    .parameter "savable"
    .parameter
    .parameter "versions"
    .parameter "formatVersion"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/jme3/export/Savable;",
            ">;[II)I"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, desiredClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/jme3/export/Savable;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 126
    .local v1, thisClass:Ljava/lang/Class;
    const/4 v0, 0x0

    .line 128
    .local v0, count:I
    :goto_5
    if-eq v1, p1, :cond_16

    .line 129
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_16

    invoke-static {v1}, Lcom/jme3/export/SavableClassUtil;->isImplementingSavable(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 137
    :cond_16
    if-nez v1, :cond_47

    .line 138
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not extend "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_47
    array-length v2, p2

    if-lt v0, v2, :cond_7e

    .line 142
    const/4 v2, 0x1

    if-gt p3, v2, :cond_4f

    .line 143
    const/4 v2, 0x0

    .line 151
    :goto_4e
    return v2

    .line 145
    :cond_4f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot access version of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " because it doesn\'t implement Savable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_7e
    aget v2, p2, v0

    goto :goto_4e
.end method

.method public static isImplementingSavable(Ljava/lang/Class;)Z
    .registers 2
    .parameter

    .prologue
    .line 85
    const-class v0, Lcom/jme3/export/Savable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    .line 86
    return v0
.end method

.method private static remapClass(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 76
    sget-object v1, Lcom/jme3/export/SavableClassUtil;->classRemappings:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_b

    .line 80
    .end local p0
    :goto_a
    return-object p0

    .restart local p0
    :cond_b
    move-object p0, v0

    goto :goto_a
.end method
