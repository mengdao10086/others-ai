.class Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition$NameChar;
.super Ljava/lang/Object;
.source "ForeignPersonRecognition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameChar"
.end annotation


# instance fields
.field private chars:[C


# direct methods
.method public constructor <init>([C)V
    .registers 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition$NameChar;->chars:[C

    return-void
.end method


# virtual methods
.method public contains(C)Z
    .registers 3

    .line 137
    iget-object v0, p0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition$NameChar;->chars:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition$NameChar;->contains(C)Z

    move-result p1

    return p1
.end method
