.class public Lcom/google/android/finsky/exploreactivity/BookNode;
.super Lcom/google/android/finsky/exploreactivity/DocumentNode;
.source "BookNode.java"


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DrawingUtils;Landroid/view/ViewGroup;)V
    .registers 6
    .parameter "parent"
    .parameter "doc"
    .parameter "nodeController"
    .parameter "drawingUtils"
    .parameter "uiComponents"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p5}, Lcom/google/android/finsky/exploreactivity/DocumentNode;-><init>(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DrawingUtils;Landroid/view/ViewGroup;)V

    .line 11
    return-void
.end method
