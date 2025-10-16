.class public Ljwtc/android/chess/constants/PieceSets;
.super Ljava/lang/Object;
.source "PieceSets.java"


# static fields
.field public static final ALPHA:I = 0x0

.field public static final BLINDFOLD_HIDE_PIECES:I = 0x1

.field public static final BLINDFOLD_SHOW_PIECES:I = 0x0

.field public static final BLINDFOLD_SHOW_PIECE_LOCATION:I = 0x2

.field public static final CALIFORNIA:I = 0x3

.field public static final LEIPZIG:I = 0x2

.field public static final MERIDA:I = 0x1

.field public static PIECES:[[[I

.field public static selectedBlindfoldMode:I

.field public static selectedSet:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 8
    fill-array-data v1, :array_0

    const-class v2, I

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[I

    sput-object v1, Ljwtc/android/chess/constants/PieceSets;->PIECES:[[[I

    const/4 v2, 0x0

    .line 18
    sput v2, Ljwtc/android/chess/constants/PieceSets;->selectedSet:I

    .line 19
    sput v2, Ljwtc/android/chess/constants/PieceSets;->selectedBlindfoldMode:I

    .line 22
    aget-object v3, v1, v2

    aget-object v3, v3, v2

    const v4, 0x7f070138

    aput v4, v3, v2

    .line 23
    aget-object v3, v1, v2

    aget-object v3, v3, v2

    const v4, 0x7f070137

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 24
    aget-object v3, v1, v2

    aget-object v3, v3, v2

    const v4, 0x7f070135

    const/4 v6, 0x2

    aput v4, v3, v6

    .line 25
    aget-object v3, v1, v2

    aget-object v3, v3, v2

    const v4, 0x7f07013a

    aput v4, v3, v0

    .line 26
    aget-object v3, v1, v2

    aget-object v3, v3, v2

    const v4, 0x7f070139

    const/4 v7, 0x4

    aput v4, v3, v7

    .line 27
    aget-object v3, v1, v2

    aget-object v3, v3, v2

    const v4, 0x7f070136

    const/4 v8, 0x5

    aput v4, v3, v8

    .line 28
    aget-object v3, v1, v2

    aget-object v3, v3, v5

    const v4, 0x7f07013e

    aput v4, v3, v2

    .line 29
    aget-object v3, v1, v2

    aget-object v3, v3, v5

    const v4, 0x7f07013d

    aput v4, v3, v5

    .line 30
    aget-object v3, v1, v2

    aget-object v3, v3, v5

    const v4, 0x7f07013b

    aput v4, v3, v6

    .line 31
    aget-object v3, v1, v2

    aget-object v3, v3, v5

    const v4, 0x7f070140

    aput v4, v3, v0

    .line 32
    aget-object v3, v1, v2

    aget-object v3, v3, v5

    const v4, 0x7f07013f

    aput v4, v3, v7

    .line 33
    aget-object v3, v1, v2

    aget-object v3, v3, v5

    const v4, 0x7f07013c

    aput v4, v3, v8

    .line 35
    aget-object v3, v1, v5

    aget-object v3, v3, v2

    const v4, 0x7f07015c

    aput v4, v3, v2

    .line 36
    aget-object v3, v1, v5

    aget-object v3, v3, v2

    const v4, 0x7f07015b

    aput v4, v3, v5

    .line 37
    aget-object v3, v1, v5

    aget-object v3, v3, v2

    const v4, 0x7f070159

    aput v4, v3, v6

    .line 38
    aget-object v3, v1, v5

    aget-object v3, v3, v2

    const v4, 0x7f07015e

    aput v4, v3, v0

    .line 39
    aget-object v3, v1, v5

    aget-object v3, v3, v2

    const v4, 0x7f07015d

    aput v4, v3, v7

    .line 40
    aget-object v3, v1, v5

    aget-object v3, v3, v2

    const v4, 0x7f07015a

    aput v4, v3, v8

    .line 41
    aget-object v3, v1, v5

    aget-object v3, v3, v5

    const v4, 0x7f070162

    aput v4, v3, v2

    .line 42
    aget-object v3, v1, v5

    aget-object v3, v3, v5

    const v4, 0x7f070161

    aput v4, v3, v5

    .line 43
    aget-object v3, v1, v5

    aget-object v3, v3, v5

    const v4, 0x7f07015f

    aput v4, v3, v6

    .line 44
    aget-object v3, v1, v5

    aget-object v3, v3, v5

    const v4, 0x7f070164

    aput v4, v3, v0

    .line 45
    aget-object v3, v1, v5

    aget-object v3, v3, v5

    const v4, 0x7f070163

    aput v4, v3, v7

    .line 46
    aget-object v3, v1, v5

    aget-object v3, v3, v5

    const v4, 0x7f070160

    aput v4, v3, v8

    .line 48
    aget-object v3, v1, v6

    aget-object v3, v3, v2

    const v4, 0x7f070150

    aput v4, v3, v2

    .line 49
    aget-object v3, v1, v6

    aget-object v3, v3, v2

    const v4, 0x7f07014f

    aput v4, v3, v5

    .line 50
    aget-object v3, v1, v6

    aget-object v3, v3, v2

    const v4, 0x7f07014d

    aput v4, v3, v6

    .line 51
    aget-object v3, v1, v6

    aget-object v3, v3, v2

    const v4, 0x7f070152

    aput v4, v3, v0

    .line 52
    aget-object v3, v1, v6

    aget-object v3, v3, v2

    const v4, 0x7f070151

    aput v4, v3, v7

    .line 53
    aget-object v3, v1, v6

    aget-object v3, v3, v2

    const v4, 0x7f07014e

    aput v4, v3, v8

    .line 54
    aget-object v3, v1, v6

    aget-object v3, v3, v5

    const v4, 0x7f070156

    aput v4, v3, v2

    .line 55
    aget-object v3, v1, v6

    aget-object v3, v3, v5

    const v4, 0x7f070155

    aput v4, v3, v5

    .line 56
    aget-object v3, v1, v6

    aget-object v3, v3, v5

    const v4, 0x7f070153

    aput v4, v3, v6

    .line 57
    aget-object v3, v1, v6

    aget-object v3, v3, v5

    const v4, 0x7f070158

    aput v4, v3, v0

    .line 58
    aget-object v3, v1, v6

    aget-object v3, v3, v5

    const v4, 0x7f070157

    aput v4, v3, v7

    .line 59
    aget-object v3, v1, v6

    aget-object v3, v3, v5

    const v4, 0x7f070154

    aput v4, v3, v8

    .line 61
    aget-object v3, v1, v0

    aget-object v3, v3, v2

    const v4, 0x7f070144

    aput v4, v3, v2

    .line 62
    aget-object v3, v1, v0

    aget-object v3, v3, v2

    const v4, 0x7f070143

    aput v4, v3, v5

    .line 63
    aget-object v3, v1, v0

    aget-object v3, v3, v2

    const v4, 0x7f070141

    aput v4, v3, v6

    .line 64
    aget-object v3, v1, v0

    aget-object v3, v3, v2

    const v4, 0x7f070146

    aput v4, v3, v0

    .line 65
    aget-object v3, v1, v0

    aget-object v3, v3, v2

    const v4, 0x7f070145

    aput v4, v3, v7

    .line 66
    aget-object v3, v1, v0

    aget-object v3, v3, v2

    const v4, 0x7f070142

    aput v4, v3, v8

    .line 67
    aget-object v3, v1, v0

    aget-object v3, v3, v5

    const v4, 0x7f07014a

    aput v4, v3, v2

    .line 68
    aget-object v2, v1, v0

    aget-object v2, v2, v5

    const v3, 0x7f070149

    aput v3, v2, v5

    .line 69
    aget-object v2, v1, v0

    aget-object v2, v2, v5

    const v3, 0x7f070147

    aput v3, v2, v6

    .line 70
    aget-object v2, v1, v0

    aget-object v2, v2, v5

    const v3, 0x7f07014c

    aput v3, v2, v0

    .line 71
    aget-object v2, v1, v0

    aget-object v2, v2, v5

    const v3, 0x7f07014b

    aput v3, v2, v7

    .line 72
    aget-object v0, v1, v0

    aget-object v0, v0, v5

    const v1, 0x7f070148

    aput v1, v0, v8

    return-void

    :array_0
    .array-data 4
        0x4
        0x2
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
