.class public Lcom/jme3/collision/CollisionResult;
.super Ljava/lang/Object;
.source "CollisionResult.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/jme3/collision/CollisionResult;",
        ">;"
    }
.end annotation


# instance fields
.field private contactNormal:Lcom/jme3/math/Vector3f;

.field private contactPoint:Lcom/jme3/math/Vector3f;

.field private distance:F

.field private geometry:Lcom/jme3/scene/Geometry;

.field private triangleIndex:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;F)V
    .registers 3
    .parameter "contactPoint"
    .parameter "distance"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/jme3/collision/CollisionResult;->contactPoint:Lcom/jme3/math/Vector3f;

    .line 64
    iput p2, p0, Lcom/jme3/collision/CollisionResult;->distance:F

    .line 65
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/jme3/collision/CollisionResult;)I
    .registers 4
    .parameter "other"

    .prologue
    .line 102
    iget v0, p0, Lcom/jme3/collision/CollisionResult;->distance:F

    iget v1, p1, Lcom/jme3/collision/CollisionResult;->distance:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    .line 103
    const/4 v0, -0x1

    .line 107
    :goto_9
    return v0

    .line 104
    :cond_a
    iget v0, p0, Lcom/jme3/collision/CollisionResult;->distance:F

    iget v1, p1, Lcom/jme3/collision/CollisionResult;->distance:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    .line 105
    const/4 v0, 0x1

    goto :goto_9

    .line 107
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, Lcom/jme3/collision/CollisionResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/jme3/collision/CollisionResult;->compareTo(Lcom/jme3/collision/CollisionResult;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 112
    instance-of v0, p1, Lcom/jme3/collision/CollisionResult;

    if-eqz v0, :cond_10

    .line 113
    check-cast p1, Lcom/jme3/collision/CollisionResult;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/jme3/collision/CollisionResult;->compareTo(Lcom/jme3/collision/CollisionResult;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 115
    :goto_d
    return v0

    .line 113
    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    .line 115
    .restart local p1
    :cond_10
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_d
.end method

.method public getContactPoint()Lcom/jme3/math/Vector3f;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jme3/collision/CollisionResult;->contactPoint:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getDistance()F
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Lcom/jme3/collision/CollisionResult;->distance:F

    return v0
.end method

.method public getGeometry()Lcom/jme3/scene/Geometry;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/jme3/collision/CollisionResult;->geometry:Lcom/jme3/scene/Geometry;

    return-object v0
.end method

.method public setContactNormal(Lcom/jme3/math/Vector3f;)V
    .registers 2
    .parameter "norm"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/jme3/collision/CollisionResult;->contactNormal:Lcom/jme3/math/Vector3f;

    .line 76
    return-void
.end method

.method public setDistance(F)V
    .registers 2
    .parameter "dist"

    .prologue
    .line 83
    iput p1, p0, Lcom/jme3/collision/CollisionResult;->distance:F

    .line 84
    return-void
.end method

.method public setGeometry(Lcom/jme3/scene/Geometry;)V
    .registers 2
    .parameter "geom"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/jme3/collision/CollisionResult;->geometry:Lcom/jme3/scene/Geometry;

    .line 72
    return-void
.end method

.method public setTriangleIndex(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 87
    iput p1, p0, Lcom/jme3/collision/CollisionResult;->triangleIndex:I

    .line 88
    return-void
.end method
