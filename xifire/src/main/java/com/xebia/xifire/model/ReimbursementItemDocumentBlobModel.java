package com.xebia.xifire.model;

import java.sql.Blob;

/**
 * The Blob model class for lazy loading the document column in ReimbursementItem.
 *
 * @author Brian Wing Shun Chan
 * @see ReimbursementItem
 * @generated
 */
public class ReimbursementItemDocumentBlobModel {
    private long _id;
    private Blob _documentBlob;

    public ReimbursementItemDocumentBlobModel() {
    }

    public ReimbursementItemDocumentBlobModel(long id) {
        _id = id;
    }

    public ReimbursementItemDocumentBlobModel(long id, Blob documentBlob) {
        _id = id;
        _documentBlob = documentBlob;
    }

    public long getId() {
        return _id;
    }

    public void setId(long id) {
        _id = id;
    }

    public Blob getDocumentBlob() {
        return _documentBlob;
    }

    public void setDocumentBlob(Blob documentBlob) {
        _documentBlob = documentBlob;
    }
}
