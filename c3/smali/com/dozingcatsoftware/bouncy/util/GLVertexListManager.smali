.class public Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;
.super Ljava/lang/Object;
.source "GLVertexListManager.java"


# instance fields
.field vertexListCount:I

.field vertexLists:[Lcom/dozingcatsoftware/bouncy/util/GLVertexList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/dozingcatsoftware/bouncy/util/GLVertexList;

    .line 11
    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;->vertexLists:[Lcom/dozingcatsoftware/bouncy/util/GLVertexList;

    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;->vertexLists:[Lcom/dozingcatsoftware/bouncy/util/GLVertexList;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 13
    new-instance v2, Lcom/dozingcatsoftware/bouncy/util/GLVertexList;

    invoke-direct {v2}, Lcom/dozingcatsoftware/bouncy/util/GLVertexList;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addVertexListForMode(I)Lcom/dozingcatsoftware/bouncy/util/GLVertexList;
    .locals 4

    .line 34
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;->vertexListCount:I

    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;->vertexLists:[Lcom/dozingcatsoftware/bouncy/util/GLVertexList;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 35
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/dozingcatsoftware/bouncy/util/GLVertexList;

    .line 36
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;->vertexLists:[Lcom/dozingcatsoftware/bouncy/util/GLVertexList;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;->vertexLists:[Lcom/dozingcatsoftware/bouncy/util/GLVertexList;

    iget v1, p0, Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;->vertexListCount:I

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    .line 41
    new-instance v2, Lcom/dozingcatsoftware/bouncy/util/GLVertexList;

    invoke-direct {v2}, Lcom/dozingcatsoftware/bouncy/util/GLVertexList;-><init>()V

    aput-object v2, v0, v1

    .line 43
    :cond_1
    invoke-virtual {v2, p1}, Lcom/dozingcatsoftware/bouncy/util/GLVertexList;->setGLMode(I)V

    .line 44
    invoke-virtual {v2}, Lcom/dozingcatsoftware/bouncy/util/GLVertexList;->begin()V

    .line 45
    iget p1, p0, Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;->vertexListCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;->vertexListCount:I

    return-object v2
.end method

.method public begin()V
    .locals 1

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;->vertexListCount:I

    return-void
.end method

.method public end()V
    .locals 2

    const/4 v0, 0x0

    .line 22
    :goto_0
    iget v1, p0, Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;->vertexListCount:I

    if-ge v0, v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;->vertexLists:[Lcom/dozingcatsoftware/bouncy/util/GLVertexList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/dozingcatsoftware/bouncy/util/GLVertexList;->end()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public render(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    const/4 v0, 0x0

    .line 28
    :goto_0
    iget v1, p0, Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;->vertexListCount:I

    if-ge v0, v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/util/GLVertexListManager;->vertexLists:[Lcom/dozingcatsoftware/bouncy/util/GLVertexList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/dozingcatsoftware/bouncy/util/GLVertexList;->render(Ljavax/microedition/khronos/opengles/GL10;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
