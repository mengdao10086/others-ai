.class public Lcom/miui/contentextension/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    const/4 v0, 0x0

    .line 32
    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/StringUtils;->stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/StringUtils;->stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_3a

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3a

    :cond_9
    if-nez p1, :cond_1c

    :goto_b
    if-eqz v0, :cond_35

    add-int/lit8 p1, v0, -0x1

    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p1

    if-eqz p1, :cond_35

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 66
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_23

    return-object p0

    :cond_23
    :goto_23
    if-eqz v0, :cond_35

    add-int/lit8 v1, v0, -0x1

    .line 69
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_35

    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    :cond_35
    const/4 p1, 0x0

    .line 73
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3a
    :goto_3a
    return-object p0
.end method

.method public static stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_36

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_36

    :cond_9
    const/4 v1, 0x0

    if-nez p1, :cond_1b

    :goto_c
    if-eq v1, v0, :cond_32

    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p1

    if-eqz p1, :cond_32

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 46
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_22

    return-object p0

    :cond_22
    :goto_22
    if-eq v1, v0, :cond_32

    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_32

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 53
    :cond_32
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_36
    :goto_36
    return-object p0
.end method
